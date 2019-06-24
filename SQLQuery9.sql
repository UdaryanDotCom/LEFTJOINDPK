SELECT distinct c.NoLoan 
	  ,a.CIF_NO
      ,a.FULL_NAME
	  ,a.BRANCHCODE	
	  ,a.[BRANCHNAME]
	  		,b.AREA
			,b.KANWIL
			,d.CUSTOMER_SINCE
		 ,d.ADDRESS
		 ,d.JOB_TITLE
		 ,d.hp
		 ,d.EMAIL_1
		     ,a.PRODUCT_JNS
	         ,a.ACCOUNT_NUMBER
      ,a.[AMOUNTDEBIT]
	  ,a.FREK_DEBIT
      ,a.[AMOUNTKREDIT]
	  ,a.[FREK_KREDIT]      
      ,a.[SALDOAKHIR]
      ,a.[SALDORATARATA]
				,c.LoanType
				,c.LoanTypeDesc
				,c.Divisi
				,c.KolCIF
				,c.DayPastDue
				,c.OSPokokLcy
				,d.CUST_TYPE
FROM [pwg].[dbo].[loanMar2017] c left OUTER JOIN [pwg].[dbo].[DPK-Mar2017] a on a.CIF_NO=c.NomorCIF
	                 left outer join [pwg].[dbo].[AREA$] b ON a.BRANCHCODE=b.KODECABANGBARU
                    left outer join [pwg].[dbo].[customer20170503] d ON c.NomorCIF=d.CIF_NO
	  where PRODUCT_JNS='giro'
	  GROUP BY  c.NoLoan 
	  ,a.CIF_NO
      ,a.FULL_NAME
	  ,a.BRANCHCODE	
	  ,a.[BRANCHNAME]
	  		,b.AREA
			,b.KANWIL
			,d.CUSTOMER_SINCE
		 ,d.ADDRESS
		 ,d.JOB_TITLE
		 ,d.hp
		 ,d.EMAIL_1
		     ,a.PRODUCT_JNS
	         ,a.ACCOUNT_NUMBER
      ,a.[AMOUNTDEBIT]
	  ,a.FREK_DEBIT
      ,a.[AMOUNTKREDIT]
	  ,a.[FREK_KREDIT]      
      ,a.[SALDOAKHIR]
      ,a.[SALDORATARATA]
				,c.LoanType
				,c.LoanTypeDesc
				,c.Divisi
				,c.KolCIF
				,c.DayPastDue
				,c.OSPokokLcy
				,d.CUST_TYPE