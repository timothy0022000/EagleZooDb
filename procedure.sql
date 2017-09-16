/*Procedure*/

CREATE PROCEDURE usp_animal_price @M MONEY, @A INT
		UPDATE		Animal
		SET		ListPrice = @M
		WHERE		AnimalID = @A

CREATE PROCEDURE usp_delete_customer @L VERCHAR(50), @F VERCHAR(50)
		DELETE		Customer
		WHERE		Lname = @L
		AND
				Fname = @F



CREATE PROCEDURE usp_add_item @I INT, @D VARCHAR(50), @Q INT, @L MONEY, @C VARCHAR(50)
		UPDATE          MERCHANDISE
		SET             @I,@D,@Q,@L,@C

usp_animal_average_price @A MONEY
		SELECT 		AVG(@A)
		FROM		AnimalSale