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


SELECT COUNT(findingid), numericfinding
FROM  edm.findings
WHERE findingtypeid = 121 
GROUP BY numericfinding
ORDER BY numericfinding;

SELECT numericfinding
FROM  edm.findings
WHERE findingtypeid = 121;


SELECT DISTINCT(MRN)
FROM edm.findings
WHERE findingtypeid = 121
AND numericfinding < 1;
--01307100
--03601885
--02579907
--02582552
--01145517
--03110509
--02232448
--03417657
--03899456
--01161717
--03407730
--03498655
--01511187
--03136154
--01262625
--03123512
--03686149
--03439950
--02919417
--03163893
--02435824
--02326075
--01392313
--03679232
--03133217
--02734650
--02835759
--02506565
--01192736

SELECT findingdatetime, numericfinding
FROM edm.findings
WHERE findingtypeid = 121
and mrn = '01307100'
ORDER BY findingdatetime;
--2005-05-19 20:17:12	97
--2005-05-20 00:37:58	98.9
--2005-05-20 08:30:06	98.9
--2012-05-26 03:50:27	97.8
--2012-05-26 06:03:50	97.7
--2012-05-26 10:15:00	97.9
--2012-05-26 13:20:54	98.1
--2012-05-26 17:45:27	97.3
--2012-05-26 22:14:43	98
--2012-05-27 01:25:56	97.9
--2012-05-27 06:54:49	98
--2012-05-27 10:35:31	97.6
--2012-05-27 14:10:20	98.1
--2012-05-27 17:53:04	98.6
--2012-05-27 22:13:09	98.3
--2012-05-28 01:59:27	98.1
--2012-05-28 06:52:01	97.5
--2012-05-28 09:22:49	97.5
--2012-05-28 13:47:08	97.5
--2012-05-28 17:12:54	97.3
--2012-05-28 21:39:36	98.1
--2012-05-28 21:56:16	98.4
--2012-05-29 02:18:10	97.6
--2012-05-29 06:38:35	97.8
--2012-05-29 09:22:25	97.6
--2012-05-29 14:19:02	97.8
--2012-05-29 16:07:55	97.7
--2012-06-12 13:16:13	98.2
--2012-08-06 14:02:31	97.4
--2012-08-23 14:33:49	98.1
--2012-09-12 14:04:26	97.5
--2012-10-10 16:19:04	97.8
--2012-12-14 12:30:22	97
--2013-02-12 12:56:18	98
--2013-03-19 13:19:19	97
--2013-04-05 14:34:23	97
--2013-04-26 13:21:55	97
--2013-05-22 08:30:42	98
--2013-05-30 11:25:28	98
--2013-06-12 14:05:18	98
--2013-06-19 08:03:05	97
--2013-06-26 09:11:04	98
--2013-07-09 08:55:20	97.5
--2013-07-10 18:14:42	98
--2013-07-16 09:00:56	98
--2013-07-17 09:28:07	97.9
--2013-07-30 08:12:18	98.5
--2013-09-13 12:49:30	97
--2013-11-05 11:58:06	98
--2014-03-12 11:09:55	97.6
--2014-04-01 11:56:26	98.6
--2014-05-30 12:40:06	98
--2014-06-25 11:32:38	97.6
--2014-08-28 13:12:08	98
--2014-09-16 10:02:50	98.6
--2014-10-01 14:28:52	98
--2014-10-21 09:46:29	97.7
--2014-12-10 09:49:39	97.5
--2014-12-12 05:31:01	98.3
--2014-12-12 14:21:32	98.6
--2014-12-12 17:25:39	98.8
--2014-12-12 19:37:13	97.5
--2014-12-13 00:33:30	98.1
--2014-12-13 07:13:55	97.5
--2014-12-13 15:55:57	98.1
--2014-12-13 21:08:36	98.2
--2014-12-14 02:10:44	98.6
--2014-12-14 08:48:09	97.6
--2014-12-14 14:48:06	98.1
--2014-12-14 17:12:34	98
--2014-12-14 21:20:49	98
--2014-12-15 01:40:46	97.9
--2014-12-15 09:33:03	98
--2014-12-15 14:30:50	97.8
--2014-12-15 21:33:47	98.4
--2014-12-16 01:10:27	98.7
--2014-12-16 09:07:06	97.9
--2014-12-26 14:55:03	0
--2014-12-31 13:38:12	98
--2015-03-10 09:06:52	98
--2015-03-10 09:08:29	98
--2015-03-18 13:39:32	98
--2015-05-13 12:17:00	97.9
--2015-06-03 10:21:07	97.6
--2015-06-17 15:10:00	97.4
--2015-08-20 05:26:04	96.9
--2015-08-20 07:41:06	96.8
--2015-10-07 15:02:00	97.8
--2015-12-18 09:53:00	97.4
--2015-12-30 14:43:00	97.8
--2016-01-05 08:22:00	98.2
--2016-03-03 10:31:00	98
--2016-03-10 12:24:00	98.4
--2016-03-15 09:43:00	97.5
--2016-03-23 13:35:00	97.8
--2016-03-31 00:39:07	97.4
--2016-03-31 07:09:30	97.8
--2016-03-31 13:48:00	98.3
--2016-03-31 18:13:49	97.7
--2016-04-18 08:44:00	97.5
--2016-04-21 13:26:00	98
--2016-04-26 08:34:00	97.8
--2016-05-19 13:50:00	98
--2016-06-15 12:56:00	98.3
--2016-07-15 08:54:00	98
--2016-07-20 14:06:00	97.5
--2016-09-08 13:09:00	97.3
--2016-11-16 13:13:00	97.8
--2016-12-21 08:51:00	98.2
--2017-03-02 09:29:00	97.8




SELECT findingdatetime, nativefinding, findingdesc
FROM edm.findings fn
JOIN edm.lookupfinding lfn on lfn.findingtypeid = fn.findingtypeid
WHERE mrn = '01307100'
AND findingdatetime >= '2014-12-25'
AND findingdatetime <= '2014-12-28'
ORDER BY findingdatetime;

--2014-12-26 14:55:00	62	HEIGHT (inches)
--2014-12-26 14:55:00	97	PULSE OXIMETRY
--2014-12-26 14:55:00	82	Diastolic Blood Pressure
--2014-12-26 14:55:00	139	Systolic Blood Pressure
--2014-12-26 14:55:00		BLOOD PRESSURE (sys/dia)
--2014-12-26 14:55:03	0	TEMPERATURE (F)
--2014-12-26 14:55:03		Pre-visit preparation completed by
--2014-12-26 14:55:03	82	Diastolic Blood Pressure
--2014-12-26 14:55:03		inspection of skin and subcutaneous tissues E&M
--2014-12-26 14:55:03	139	Systolic Blood Pressure
--2014-12-26 14:55:03	157.48	HEIGHT (CM)
--2014-12-26 14:55:03	79.38	WEIGHT (KG)
--2014-12-26 14:55:03	75	PULSE
--2014-12-26 14:55:03		physical exam, lungs
--2014-12-26 14:55:03	32.13	BODY MASS INDEX
--2014-12-26 14:55:03		assessment of pain on a 0-10 scale 
--2014-12-26 14:55:03		examination of extremities
--2014-12-26 14:55:03		history of present illness
--2014-12-26 14:55:03		examination of heart
--2014-12-26 14:55:03		general appearance on examination E&M
--2014-12-26 14:55:03	97	O2 SAT%

