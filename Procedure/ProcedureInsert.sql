
CREATE PROCEDURE insertPresentation 
(
@Speaker nvarchar(175),
@Presentation nvarchar(200)
)
AS
BEGIN TRY 
	INSERT INTO professors_presentation (presentation_speaker, presentation_title) VALUES (@Speaker, @Presentation);
END TRY
BEGIN CATCH
	PRINT N'AN ERROR OCCURRED WITH PROCEDURE insertPresentation. COULD NOT INSERT DATA';
END CATCH;
GO

Execute insertPresentation 'Speaker1', 'Presentation1';
GO

Execute insertPresentation 'Speaker1', 'Presentation2';
GO


CREATE PROCEDURE selectPresentation
(
@Event nvarchar(200),
@Level nvarchar(200)

)