Create PROCEDURE [dbo].[eyresiPerioxis]
 @@geografcode int
 AS

 SELECT COUNT(*)
 FROM public."Πελάτης"
 WHERE "Κωδικός_Γ.Π"_=@geografcode