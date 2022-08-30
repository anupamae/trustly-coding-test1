SELECT * FROM public.users AS U
WHERE NOT EXISTS( 
	SELECT * FROM public.bankdeposits AS D
	WHERE U.userid = D.userid
    AND D.amount > 40
)
ORDER BY userid ASC;