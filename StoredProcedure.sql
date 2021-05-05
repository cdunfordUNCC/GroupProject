-- Create a SP  AVG_RESTAURANT to return the Avg Restaurant rating for a particular restaurant

Use Campus_Eats_Fall2020;
DROP PROCEDURE IF EXISTS AVG_RESTAURANT

/* change the delimeter from ; to $$ so the procedure will save when it encounteres semi-colon */

DELIMITER $$

/* input variable is the RestaurantID, output variable is where we will return the average */

CREATE PROCEDURE AVG_RESTAURANT(IN RestaurantID INT, OUT outavgRest decimal(2, 1))

BEGIN
        /* declare a variable to store the average */

         DECLARE theAVGInfo DECIMAL(2,1);

        /* we are setting the variable equal to the average that is returned from the SELECT statement */

         SET theAVGInfo=

         (SELECT AVG(ratings.restaurant_rating) FROM ratings
           INNER JOIN orders ON ratings.order_id= orders.order_id
          WHERE orders.restaurant_id = RestaurantID);

         /* notice that the where clause uses the IN input variable RestaurantID
              and last we will set the OUT parameter to the declared variable that is storing the average */  

     SET outavgRest= theAVGInfo;
     /* end the procedure using the delimeter*/ 
END DELIMITER ;

/* that ends the procedure – next we call the procedure then display the Output parameter for rest 1 */

CALL AVG_RESTAURANT(1, @averageforRestaurant);
SELECT @averageforRestaurant as The_Restaurant_Average;



