--selecteer te kolommen 
SELECT        tblCountry.CountryName, tblEvent.EventName, tblEvent.EventDate
-- Inner join tblCountry zodat deze ook weergegeven kan worden 
FROM            tblCountry INNER JOIN
                         tblEvent ON tblCountry.CountryID = tblEvent.CountryID

--sorteer op datum van laag naar hoog
ORDER BY tblEvent.EventDate