SELECT EventName, EventDate, tblCategory.CategoryName FROM tblEvent
RIGHT OUTER JOIN tblCategory ON tblEvent.CategoryID = tblCategory.CategoryID
WHERE EventName IS NULL