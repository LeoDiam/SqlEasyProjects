Create PROCEDURE [dbo].[perigrafiP]
 @kodikosP INT,
 @hmeromhnia_1 DATE,
 @hmeromhnia_2 DATE


DECLARE prodDescr CURSOR
 FOR SELECT "Προϊόν"."Όνομα","Προμήθεια".id,"Προμήθεια".date_received
 FROM public."Προϊόν",public."Προμήθεια"
 WHERE "Προϊόν"."Κωδικός" = @kodikosP and "Προμήθεια"."Ημερομηνία" > @hmeromhnia_1 AND "Προμήθεια"."Ημερομηνία" < @hmeromhnia_2  


OPEN cursorDeliveries

WHILE @@FETCH_STATUS = 0
BEGIN
 PRINT 'Περιγραφή': ' + @"Προϊόν"."Όνομα"
 PRINT 'Κωδικός: ' +  @"Προμήθεια".id
 PRINT @date
END
CLOSE perigrafiP
DEALLOCATE perigrafiP