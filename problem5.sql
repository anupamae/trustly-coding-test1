SELECT U.userid, D.amount, D.datestamp
FROM public.users AS U
LEFT OUTER JOIN (
	SELECT DISTINCT ON (userid) datestamp, amount, userid 
	FROM public.bankdeposits 
	ORDER BY userid, datestamp DESC
) AS D 
ON U.userid = D.userid;