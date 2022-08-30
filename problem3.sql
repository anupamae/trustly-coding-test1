SELECT * FROM public.users AS U
WHERE EXISTS( 
	SELECT * FROM public.bankdeposits AS D
	WHERE U.userid = D.userid
    AND D.datestamp >= now()::date - EXTRACT(DOW from now())::INTEGER
)
ORDER BY userid ASC;