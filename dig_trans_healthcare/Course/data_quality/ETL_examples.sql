-- Temperature

SELECT * 
FROM edm.lookupfinding
WHERE LOWER(FINDINGDESC) like '%temp%'; 

--642	4101	ISOLETTE TEMPERATURE	c     	CareCast	ISOLETTE TEMPERATURE
--806	4279	SKIN TEMP/MOISTURE	      	CareCast	SKIN TEMP/MOISTURE
--120	3013	TEMPERATURE (C)	Degree	CareCast	TEMPERATURE (C)
--121	3015	TEMPERATURE (F)	Degree	CareCast	TEMPERATURE (F)
--134	3092	DEVICE TEMPERATURE (C)	degree	CareCast	DEVICE TEMPERATURE (C)
--135	3093	SKIN TEMPERATURE (C)	degree	CareCast	SKIN TEMPERATURE (C)

SELECT nativefinding, numericfinding, categoricfinding, findingtypeid, 
    numericfindinglow, numericfindinghigh
FROM edm.findings
WHERE findingtypeid in (642, 806, 120,121, 134, 135);
--97.8	97.8		121	0	0
--97.7	97.7		121	0	0
--97.7	97.7		121	0	0
--98.3	98.3		121	0	0
--36.83	36.83		120	0	0
--37	37		    642	0	0
--98.7	98.7		121	0	0
--98.4	98.4		121	0	0
--98.5	98.5		121	0	0
--98.0	98		    121	0	0
--36.5	36.5		120	0	0
--98.0	98		    121	0	0
--98.0	98		    121	0	0
--98.0	98		    121	0	0
--OPEN CRIB		    OPEN CRIB	642	0	0
--37.1	37.1		120	0	0
--98.2	98.2		121	0	0
--98.1	98.1		121	0	0

SELECT nativefinding, numericfinding, categoricfinding, findingtypeid, 
    numericfindinglow, numericfindinghigh
FROM  edm.findings
WHERE findingtypeid = 121 
AND numericfinding < 70;
--35.6	35.6		121		
--32	32		121		
--32	32		121		
--32	32		121		
--46.6	46.6		121		
--46	46		121		
--46	46		121		
--48.2	48.2		121		
--46.2	46.2		121		
--48.4	48.4		121		
--36.5	36.5		121		
--36.9	36.9		121		
--32	32		121		
--48.2	48.2		121		
--49.5	49.5		121		
--32	32		121		
--33.8	33.8		121		
--60.8	60.8		121		
--45.5	45.5		121	

SELECT COUNT(*)
FROM  edm.findings
WHERE findingtypeid = 121;
--36,435,036

SELECT COUNT(*)
FROM  edm.findings
WHERE findingtypeid = 121 
AND numericfinding < 90;
--22,538

SELECT COUNT(*)
FROM  edm.findings
WHERE findingtypeid = 121 
AND numericfinding < 70;
--12,575

SELECT COUNT(*)
FROM  edm.findings
WHERE findingtypeid = 121 
AND numericfinding < 1;
--434

SELECT nativefinding, numericfinding, categoricfinding, findingtypeid, 
    numericfindinglow, numericfindinghigh
FROM  edm.findings
WHERE findingtypeid = 121 
AND numericfinding < 1;
---0	0		121	0	0
--.3	0.3		121		
---0	0		121	0	0
---0	0		121	0	0
---0	0		121	0	0
---0	0		121	0	0
---0	0		121	0	0
---0	0		121	0	0
---0	0		121	0	0
---0.00	0		121	0	0
---0	0		121	0	0
---0.00	0		121	0	0
---0	0		121	0	0
---0.00	0		121	0	0
---0	0		121	0	0
--0	0		121	0	0
---0	0		121	0	0
---0	0		121	0	0
---0.00	0		121	0	0
---0.00	0		121	0	0
---0.00	0		121	0	0
---0.00	0		121	0	0
---0	0		121	0	0
---0	0		121	0	0
---0	0		121	0	0
--0000000000000000000000000000000000000000000000000000000000000000000000000000000	0		121	0	0


SELECT COUNT(*)
FROM  edm.findings
WHERE findingtypeid = 121 
AND numericfinding < 95
AND numericfinding >= 90;
--57,649

SELECT COUNT(DISTINCT MRN)
FROM  edm.findings
WHERE findingtypeid = 121 
AND numericfinding < 95
AND numericfinding >= 90;
--18,550
-- About 1000 deaths each year



