SELECT EventName, EventDate AS 'NotFormatted', FORMAT (EventDate, 'yyyy/MM/dd') AS Formatted, FORMAT(EventDate, 'yyyy/MM/dd') AS Converted FROM tblEvent
WHERE EventDate BETWEEN '2001-01-01' AND '2001-12-31'

