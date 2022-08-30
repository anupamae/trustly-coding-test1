SELECT public.users.*, 
(
	SELECT COUNT(*)
	FROM public.bankaccounts AS B 
	WHERE B.userid = public.users.userid
) AS no_accounts FROM public.users;