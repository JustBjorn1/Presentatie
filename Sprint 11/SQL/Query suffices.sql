SELECT EventName, DATENAME(weekday, EventDate) + ' ' + DATENAME(day, EventDate)+ 'th ' + DATENAME(month, EventDate) + ' ' + DATENAME(YEAR, EventDate) AS 'Full Date' FROM tblEvent


