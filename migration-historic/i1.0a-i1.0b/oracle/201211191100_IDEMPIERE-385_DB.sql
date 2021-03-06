-- Nov 19, 2012 10:56:55 AM COT
-- IDEMPIERE-385 Resolve M_Storage locking and data consistency
INSERT INTO AD_Element (ColumnName,AD_Element_ID,EntityType,Name,PrintName,AD_Element_UU,AD_Client_ID,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive) VALUES ('M_StorageOnHand_UU',200233,'U','M_StorageOnHand_UU','M_StorageOnHand_UU','d22731f0-0762-43bf-9f29-66383f3038f8',0,TO_DATE('2012-11-19 10:56:54','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2012-11-19 10:56:54','YYYY-MM-DD HH24:MI:SS'),0,100,100,'Y')
;

-- Nov 19, 2012 10:56:55 AM COT
-- IDEMPIERE-385 Resolve M_Storage locking and data consistency
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Help,PO_Description,PO_Help,Name,Description,PrintName,PO_Name,PO_PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy,AD_Element_Trl_UU ) SELECT l.AD_Language,t.AD_Element_ID, t.Help,t.PO_Description,t.PO_Help,t.Name,t.Description,t.PrintName,t.PO_Name,t.PO_PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy,Generate_UUID() FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=200233 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Nov 19, 2012 10:56:56 AM COT
-- IDEMPIERE-385 Resolve M_Storage locking and data consistency
INSERT INTO AD_Column (IsEncrypted,Version,AD_Table_ID,AD_Column_ID,EntityType,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,AD_Reference_ID,IsKey,AD_Element_ID,AD_Column_UU,IsUpdateable,IsAlwaysUpdateable,ColumnName,Name,Updated,CreatedBy,AD_Org_ID,IsActive,Created,UpdatedBy,AD_Client_ID) VALUES ('N',1.00,200026,200917,'U','N','N','N','N',36,'N',10,'N',200233,'66058949-db74-48a6-a940-79ee28d0f0ed','Y','N','M_StorageOnHand_UU','M_StorageOnHand_UU',TO_DATE('2012-11-19 10:56:54','YYYY-MM-DD HH24:MI:SS'),100,0,'Y',TO_DATE('2012-11-19 10:56:54','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Nov 19, 2012 10:56:56 AM COT
-- IDEMPIERE-385 Resolve M_Storage locking and data consistency
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy,AD_Column_Trl_UU ) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy,Generate_UUID() FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=200917 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Nov 19, 2012 10:56:56 AM COT
-- IDEMPIERE-385 Resolve M_Storage locking and data consistency
ALTER TABLE M_StorageOnHand ADD M_StorageOnHand_UU NVARCHAR2(36) DEFAULT NULL 
;

-- Nov 19, 2012 10:56:56 AM COT
-- IDEMPIERE-385 Resolve M_Storage locking and data consistency
CREATE UNIQUE INDEX M_StorageOnHand_UU_idx ON m_storageonhand(M_StorageOnHand_UU)
;

-- Nov 19, 2012 10:56:57 AM COT
-- IDEMPIERE-385 Resolve M_Storage locking and data consistency
INSERT INTO AD_Element (ColumnName,AD_Element_ID,EntityType,Name,PrintName,AD_Element_UU,AD_Client_ID,Created,Updated,AD_Org_ID,CreatedBy,UpdatedBy,IsActive) VALUES ('M_StorageReservation_UU',200234,'U','M_StorageReservation_UU','M_StorageReservation_UU','283bcf86-e8af-4ac7-aaff-efcfa104e700',0,TO_DATE('2012-11-19 10:56:56','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2012-11-19 10:56:56','YYYY-MM-DD HH24:MI:SS'),0,100,100,'Y')
;

-- Nov 19, 2012 10:56:57 AM COT
-- IDEMPIERE-385 Resolve M_Storage locking and data consistency
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Help,PO_Description,PO_Help,Name,Description,PrintName,PO_Name,PO_PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy,AD_Element_Trl_UU ) SELECT l.AD_Language,t.AD_Element_ID, t.Help,t.PO_Description,t.PO_Help,t.Name,t.Description,t.PrintName,t.PO_Name,t.PO_PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy,Generate_UUID() FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=200234 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Nov 19, 2012 10:56:57 AM COT
-- IDEMPIERE-385 Resolve M_Storage locking and data consistency
INSERT INTO AD_Column (IsEncrypted,Version,AD_Table_ID,AD_Column_ID,EntityType,IsMandatory,IsTranslated,IsIdentifier,IsParent,FieldLength,IsSelectionColumn,AD_Reference_ID,IsKey,AD_Element_ID,AD_Column_UU,IsUpdateable,IsAlwaysUpdateable,ColumnName,Name,Updated,CreatedBy,AD_Org_ID,IsActive,Created,UpdatedBy,AD_Client_ID) VALUES ('N',1.00,200027,200918,'U','N','N','N','N',36,'N',10,'N',200234,'fb178aac-4ffe-4244-907c-89a0a527acf8','Y','N','M_StorageReservation_UU','M_StorageReservation_UU',TO_DATE('2012-11-19 10:56:56','YYYY-MM-DD HH24:MI:SS'),100,0,'Y',TO_DATE('2012-11-19 10:56:56','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Nov 19, 2012 10:56:57 AM COT
-- IDEMPIERE-385 Resolve M_Storage locking and data consistency
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy,AD_Column_Trl_UU ) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy,Generate_UUID() FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=200918 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Nov 19, 2012 10:56:57 AM COT
-- IDEMPIERE-385 Resolve M_Storage locking and data consistency
ALTER TABLE M_StorageReservation ADD M_StorageReservation_UU NVARCHAR2(36) DEFAULT NULL 
;

-- Nov 19, 2012 10:56:57 AM COT
-- IDEMPIERE-385 Resolve M_Storage locking and data consistency
CREATE UNIQUE INDEX M_StorageReservation_UU_idx ON m_storagereservation(M_StorageReservation_UU)
;

ALTER TABLE m_storageonhand DROP CONSTRAINT m_storageonhand_key
;

ALTER TABLE m_storageonhand ADD (CONSTRAINT m_storageonhand_pkey PRIMARY KEY (m_product_id, m_locator_id, m_attributesetinstance_id))
;

ALTER TABLE m_storagereservation DROP CONSTRAINT m_storagereservation_key
;

ALTER TABLE m_storagereservation ADD (CONSTRAINT m_storagereservation_pkey PRIMARY KEY (m_product_id, m_warehouse_id, issotrx, m_attributesetinstance_id))
;

insert into m_storageonhand (
ad_client_id,
ad_org_id,
created,
createdby,
datelastinventory,
isactive,
m_attributesetinstance_id,
m_locator_id,
m_product_id,
qtyonhand,
updated,
updatedby,
m_storageonhand_uu
)
select ad_client_id,
ad_org_id,
created,
createdby,
datelastinventory,
isactive,
m_attributesetinstance_id,
m_locator_id,
m_product_id,
qtyonhand,
updated,
updatedby,
generate_uuid()
from m_storage
;

insert into m_storagereservation (
ad_client_id,
ad_org_id,
created,
createdby,
datelastinventory,
isactive,
issotrx,
m_attributesetinstance_id,
m_product_id,
m_warehouse_id,
qty,
updated,
updatedby,
m_storagereservation_uu
)
select
min(s.ad_client_id),
min(s.ad_org_id),
min(s.created),
min(s.createdby),
null,
'Y',
'Y',
s.m_attributesetinstance_id,
s.m_product_id,
l.m_warehouse_id,
sum(s.qtyreserved),
max(s.updated),
max(s.updatedby),
generate_uuid()
from m_storage s
join m_locator l on (s.m_locator_id=l.m_locator_id)
where s.isactive='Y'
and s.qtyreserved!=0
group by s.m_attributesetinstance_id,
s.m_product_id,
l.m_warehouse_id
;

insert into m_storagereservation (
ad_client_id,
ad_org_id,
created,
createdby,
datelastinventory,
isactive,
issotrx,
m_attributesetinstance_id,
m_product_id,
m_warehouse_id,
qty,
updated,
updatedby,
m_storagereservation_uu
)
select
min(s.ad_client_id),
min(s.ad_org_id),
min(s.created),
min(s.createdby),
null,
'Y',
'N',
s.m_attributesetinstance_id,
s.m_product_id,
l.m_warehouse_id,
sum(s.qtyordered),
max(s.updated),
max(s.updatedby),
generate_uuid()
from m_storage s
join m_locator l on (s.m_locator_id=l.m_locator_id)
where s.isactive='Y'
and s.qtyordered!=0
group by s.m_attributesetinstance_id,
s.m_product_id,
l.m_warehouse_id
;

ALTER TABLE m_storage RENAME TO m_storage_to_drop
;

CREATE OR REPLACE VIEW m_storage
AS
  SELECT s.m_product_id,
         s.m_locator_id,
         s.ad_client_id,
         s.ad_org_id,
         s.isactive,
         s.created,
         s.createdby,
         s.updated,
         s.updatedby,
         s.qtyonhand,
         0 AS qtyreserved,
         0 AS qtyordered,
         s.datelastinventory,
         s.m_attributesetinstance_id,
         s.m_storageonhand_uu
  FROM   m_storageonhand s
  UNION
  SELECT sr.m_product_id,
         w.m_reservelocator_id AS m_locator_id,
         sr.ad_client_id,
         sr.ad_org_id,
         sr.isactive,
         sr.created,
         sr.createdby,
         sr.updated,
         sr.updatedby,
         0                     AS qtyonhand,
         sr.qty                AS qtyreserved,
         0                     AS qtyordered,
         sr.datelastinventory,
         sr.m_attributesetinstance_id,
         sr.m_storagereservation_uu
  FROM   m_storagereservation sr
         JOIN m_warehouse w
           ON sr.m_warehouse_id = w.m_warehouse_id
  WHERE  sr.issotrx = 'Y'
  UNION
  SELECT so.m_product_id,
         w.m_reservelocator_id AS m_locator_id,
         so.ad_client_id,
         so.ad_org_id,
         so.isactive,
         so.created,
         so.createdby,
         so.updated,
         so.updatedby,
         0                     AS qtyonhand,
         0                     AS qtyreserved,
         so.qty                AS qtyordered,
         so.datelastinventory,
         so.m_attributesetinstance_id,
         so.m_storagereservation_uu
  FROM   m_storagereservation so
         JOIN m_warehouse w
           ON so.m_warehouse_id = w.m_warehouse_id
  WHERE  so.issotrx = 'N'
;

-- Comment the next if you want to preserve a backup of the M_Storage table
DROP TABLE m_storage_to_drop
;

-- Nov 19, 2012 12:19:33 PM COT
-- IDEMPIERE-385 Resolve M_Storage locking and data consistency
UPDATE AD_Table SET IsView='Y',Updated=TO_DATE('2012-11-19 12:19:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=250
;

-- Nov 19, 2012 12:26:17 PM COT
-- IDEMPIERE-385 Resolve M_Storage locking and data consistency
UPDATE AD_Tab SET OrderByClause='M_Product_ID, M_AttributeSetInstance_ID, M_Locator_ID',Updated=TO_DATE('2012-11-19 12:26:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=179
;

-- Nov 19, 2012 12:26:42 PM COT
-- IDEMPIERE-385 Resolve M_Storage locking and data consistency
UPDATE AD_Tab SET OrderByClause='M_Product_ID, M_AttributeSetInstance_ID, M_Locator_ID',Updated=TO_DATE('2012-11-19 12:26:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53244
;

update m_warehouse set m_reservelocator_id = 
(select min(m_locator_id)
from m_locator 
where m_warehouse_id =m_warehouse.m_warehouse_id and isactive='Y' and isdefault='Y')
where m_reservelocator_id is null
;

-- Nov 19, 2012 1:15:02 PM COT
-- IDEMPIERE-385 Resolve M_Storage locking and data consistency
UPDATE AD_Column SET AD_Reference_Value_ID=191, AD_Reference_ID=18, AD_Val_Rule_ID=127, IsToolbarButton='N',Updated=TO_DATE('2012-11-19 13:15:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=200704
;

--create views
CREATE OR REPLACE VIEW M_PRODUCT_STOCK_V
AS
SELECT 
ms.IsActive, ms.Created, ms.CreatedBy, ms.Updated, ms.UpdatedBy,
mp.VALUE, mp.help, (ms.qtyonhand - ms.qtyreserved) AS qtyavailable, ms.qtyonhand, 
ms.qtyreserved, mp.description, mw.NAME AS warehouse, mw.m_warehouse_id, mw.ad_client_id, 
mw.ad_org_id, mp.documentnote
FROM M_STORAGE ms 
JOIN M_PRODUCT mp ON ms.m_product_id = mp.m_product_id
JOIN M_LOCATOR ml ON ms.m_locator_id = ml.m_locator_id
JOIN M_WAREHOUSE mw ON ml.m_warehouse_id = mw.m_warehouse_id 
ORDER BY mw.NAME
;

CREATE OR REPLACE VIEW M_PRODUCT_SUBSTITUTERELATED_V AS
SELECT s.ad_client_id, 
		s.ad_org_id, 
		s.isactive, 
		s.created, 
		s.createdby, 
		s.updated, 
		s.updatedby,
		s.m_product_id, 
		s.substitute_id, 
		'S' AS rowtype,
		mp.name, 
		sum(ms.qtyonhand - ms.qtyreserved) AS qtyavailable, 
		sum(ms.qtyonhand) AS qtyonhand, 
		sum(ms.qtyreserved) AS qtyreserved,
		ROUND(MAX(mpr.pricestd),0) AS pricestd, 
		mpr.m_pricelist_version_id, 
		mw.m_warehouse_id, 
		org.name AS orgname
           FROM m_substitute s
      JOIN m_storage ms ON ms.m_product_id = s.substitute_id
   JOIN m_product mp ON ms.m_product_id = mp.m_product_id
   JOIN m_locator ml ON ms.m_locator_id = ml.m_locator_id
   JOIN m_warehouse mw ON ml.m_warehouse_id = mw.m_warehouse_id
   JOIN m_productprice mpr ON ms.m_product_id = mpr.m_product_id
   JOIN ad_org org ON org.ad_org_id = mw.ad_org_id
   GROUP BY s.ad_client_id, 
   			s.ad_org_id, 
   			s.isactive, 
   			s.created, 
   			s.createdby, 
   			s.updated, 
   			s.updatedby, 
   			s.m_product_id, 
   			s.substitute_id, 
   			mw.m_warehouse_id, 
   			mpr.m_pricelist_version_id, 
   			org.name,  
   			mp.name
	UNION 
         SELECT r.ad_client_id, 
         	r.ad_org_id, 
         	r.isactive, 
         	r.created, 
         	r.createdby, 
         	r.updated, 
         	r.updatedby,
			r.m_product_id, 
			r.relatedproduct_id AS substitute_id, 
			'R' AS rowtype,  
			mp.name, 
			sum(ms.qtyonhand - ms.qtyreserved) AS qtyavailable, 
			sum(ms.qtyonhand) AS qtyonhand, 
			sum(ms.qtyreserved) AS qtyreserved, 
			ROUND(MAX(mpr.pricestd),0) AS pricestd, 
			mpr.m_pricelist_version_id, 
			mw.m_warehouse_id, 
			org.name AS orgname
           FROM m_relatedproduct r
      JOIN m_storage ms ON ms.m_product_id = r.relatedproduct_id
   JOIN m_product mp ON ms.m_product_id = mp.m_product_id
   JOIN m_locator ml ON ms.m_locator_id = ml.m_locator_id
   JOIN m_warehouse mw ON ml.m_warehouse_id = mw.m_warehouse_id
   JOIN m_productprice mpr ON ms.m_product_id = mpr.m_product_id
   JOIN ad_org org ON org.ad_org_id = mw.ad_org_id 
   GROUP BY r.ad_client_id, 
   			r.ad_org_id, 
   			r.isactive, 
   			r.created, 
   			r.createdby, 
   			r.updated, 
   			r.updatedby, 
   			r.m_product_id, 
   			r.relatedproduct_id, 
   			mw.m_warehouse_id, 
   			mpr.m_pricelist_version_id, 
   			org.name,  
   			mp.name
;

-- Nov 20, 2012 5:06:02 PM COT
-- IDEMPIERE-385 Resolve M_Storage locking and data consistency
UPDATE AD_Column SET IsParent='Y', IsUpdateable='N', IsToolbarButton='N',Updated=TO_DATE('2012-11-20 17:06:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=200640
;

-- Nov 20, 2012 5:28:27 PM COT
-- IDEMPIERE-385 Resolve M_Storage locking and data consistency
UPDATE AD_Column SET IsMandatory='Y', IsUpdateable='N',Updated=TO_DATE('2012-11-20 17:28:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=200640
;

-- Nov 20, 2012 5:28:36 PM COT
-- IDEMPIERE-385 Resolve M_Storage locking and data consistency
ALTER TABLE M_StorageReservation MODIFY IsSOTrx CHAR(1) DEFAULT 'Y'
;

-- Nov 20, 2012 5:28:36 PM COT
-- IDEMPIERE-385 Resolve M_Storage locking and data consistency
UPDATE M_StorageReservation SET IsSOTrx='Y' WHERE IsSOTrx IS NULL
;

SELECT register_migration_script('201211191100_IDEMPIERE-385_DB.sql') FROM dual
;

