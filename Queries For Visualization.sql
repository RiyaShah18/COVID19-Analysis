/*
Queries used for Visualization
*/

-- Global Numbers
SELECT Year(date) AS Year, SUM(new_cases) AS total_cases, SUM(new_deaths) AS total_deaths, (SUM(new_deaths)/SUM(new_cases))*100 AS DeathPercentage
FROM CovidDeaths
WHERE continent is not null
GROUP BY Year(date)
ORDER BY 1;

-- Death Count per Continent
Select location, SUM(cast(new_deaths as int)) as TotalDeathCount
From CovidDeaths
Where continent is null 
and location not in ('World', 'European Union', 'International') and location not LIKE '%income%'
Group by location
order by TotalDeathCount desc;

--Death Count per Country
SELECT Location, MAX(cast(total_deaths AS INT)) AS TotalDeathCount
FROM CovidDeaths
WHERE continent is not null
GROUP BY Location
ORDER BY TotalDeathCount desc;

-- Country wise Percent Population Infected
Select Location, Population, MAX(total_cases) as TotalInfectionCount,  Max((total_cases/population))*100 as PercentPopulationInfected
From CovidDeaths
Where continent is not null
Group by Location, Population
Order by PercentPopulationInfected desc;

-- Percent Population Infected [To analyse the trend of Infection over time for different countries]
Select Location, Population,date, MAX(total_cases) as TotalInfectionCount,  Max((total_cases/population))*100 as PercentPopulationInfected
From CovidDeaths
Group by Location, Population, date
order by PercentPopulationInfected desc;



