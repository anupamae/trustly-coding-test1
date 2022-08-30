SELECT * FROM public.users AS U
WHERE EXISTS(
	SELECT COUNT(*) FROM public.bankaccounts AS B 
	WHERE U.userid = B.userid 
	HAVING COUNT(*) > 1
)
ORDER BY userid ASC;                                                                                                                   uwwwwwwwwwwg