USE [DynamicProject]
GO
/****** Object:  StoredProcedure [dbo].[USP_Item_Price]    Script Date: 04/16/2015 16:03:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Author      : Shanu                                                                  
-- Create date : 2015-02-05                                                                  
-- Description : To Select Item Master                                                
-- Tables used :  ItemMasters                                                                 
-- Modifier    : Shanu                                                                  
-- Modify date : 2015-02-05                                                                  
-- =============================================                                                                  
-- exec USP_Item_Select '',''      
-- =============================================                                                             
ALTER PROCEDURE [dbo].[USP_Item_Price]                                                
   (        
     @Item_Price          VARCHAR(50)     = ''
      )                                                          
AS                                                                  
BEGIN                  

   Select Item_Code,  
    Item_Name,  
    Price,  
    TAX1,  
    Discount,  
    Description,  
    UP_USR_ID as user_Name  
   FROM   
    ItemMasters   
   WHERE  
   Price >= @Item_Price
   ORDER BY  
    Item_Code ,Item_Name
  
 
END  