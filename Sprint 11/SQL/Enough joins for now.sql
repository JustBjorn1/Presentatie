SELECT        tblEnemy.EnemyName, tblAuthor.AuthorName
FROM            tblEnemy INNER JOIN
                         tblEpisodeEnemy ON tblEnemy.EnemyId = tblEpisodeEnemy.EnemyId INNER JOIN
                         tblEpisode ON tblEpisodeEnemy.EpisodeId = tblEpisode.EpisodeId INNER JOIN
                         tblAuthor ON tblEpisode.AuthorId = tblAuthor.AuthorId
						 WHERE EnemyName = 'Daleks'