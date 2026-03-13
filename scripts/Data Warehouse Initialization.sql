/*

Data Warehouse Initialization
English

In this step, a new Data Warehouse database was created using SQL Server. The database was configured with separate data and log files to manage storage efficiently.

After creating the database, three schemas were defined to organize the data processing layers commonly used in modern data warehouse architectures:

Bronze Layer: This layer stores the raw data exactly as it comes from the source systems without any major transformations.

Silver Layer: In this layer, the data is cleaned, standardized, and prepared for further processing and analysis.

Gold Layer: This layer contains the final, business-ready data models that are optimized for reporting, dashboards, and analytical queries.

This layered structure helps organize the data pipeline, improves data quality, and makes the data warehouse easier to maintain and scale.


في هذه الخطوة تم إنشاء قاعدة بيانات Data Warehouse باستخدام SQL Server، حيث تم تحديد ملفات منفصلة للبيانات (Data File) وملفات السجل (Log File) لتنظيم تخزين البيانات وإدارة قاعدة البيانات بشكل أفضل.

بعد إنشاء قاعدة البيانات تم إنشاء ثلاثة Schemas لتنظيم طبقات معالجة البيانات، وهي طريقة شائعة في تصميم مستودعات البيانات الحديثة:

Bronze Layer: تحتوي هذه الطبقة على البيانات الخام كما يتم استخراجها من مصادر البيانات بدون إجراء تحويلات كبيرة عليها.

Silver Layer: في هذه الطبقة يتم تنظيف البيانات ومعالجتها وتوحيد شكلها لتكون جاهزة للتحليل.

Gold Layer: تحتوي هذه الطبقة على البيانات النهائية الجاهزة للاستخدام في التقارير ولوحات المعلومات والتحليلات.

يساعد هذا التقسيم إلى طبقات في تنظيم عملية معالجة البيانات وتحسين جودة البيانات وجعل مستودع البيانات أسهل في الإدارة والتطوير.

*/


use master



create database DataWarehouse
on 
(
   name = 'Datawarehouse', --.mdf
   filename='D:\Datawarehouse.mdf'

)
log on 
(
 name = 'Datawarehouselog', --.ldf
 filename='D:\Datawarehouse.ldf'
)

USE DataWarehouse

create schema Bronze
go 
create schema Silver
go 
create schema Gold 


