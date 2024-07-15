:- consult('Assign4.pl').

test_read_csv:-
	((\+ person('EEID',_,_,_,_,_,_,_,_,_,_,_,_,_))
	-> true, % Test passed
	% Use this in newer version of prolog
	format('ReadCSV.pl successfully remove the first row.\n')
        ;
	false % Test failed
	).
test_task_1(Names) :-
    % Test for each name in the list
    forall(member(Name, Names),
    	(
		% Add false test case
		(is_seattle_employee(Name), (\+ is_seattle_employee('Theodore Dinh')))
		-> true, % Test passed
		format('Test case: is_seattle_employee(\'~w\') passed.\n', [Name])
		; false)).

test_task_2(Names) :-
    forall(member(Name, Names),
    		% Add false test case
           ((is_senior_manager_in_IT(Name),(\+ is_senior_manager_in_IT('Test'))) ->
               true, % Test passed
		format('Test case: is_senior_manager_in_IT(\'~w\') passed.\n', [Name])
           ;
       	    	false)).

test_task_3(Names) :-
    % Test for each name in the list
    forall(member(Name, Names),
           (
		(is_director_finance_miami(Name),(\+ is_director_finance_miami('Test')))
	   	-> true, % Test passed
		format('Test case: is_director_finance_miami(\'~w\') passed.\n', [Name])
		; false
            )).

test_task_4(Names) :-
    % Test for each name in the list
    forall(member(Name, Names),
           ((is_asian_US_manufacturing_40M(Name, 'Manufacturing', 'Male', 'Asian', Age), (\+ is_asian_US_manufacturing_40M('Test','Manufacturing', 'Male', 'Asian', Age))) ->
               true, % Test passed
		format('Test case: is_asian_US_manufacturing_40M(\'~w\',\'~w\',\'~w\',\'~w\',~w) passed.\n', [Name,'Manufacturing', 'Male', 'Asian', Age])
           ;
		false )).

test_task_5(IDS):-
    % Test for each name in the list
    forall(member(EID, IDS),
           (
		%add newline to display look better
	   greet(EID),format('\n')
	   -> true % Test passed
           ; false

	   )).

test_task_6(TestCases):-

    forall(member((Name, Age,Years_to_retire), TestCases),
    (years_until_retirement(Name,Age,Years_to_retire)
    	->
        true, % Test passed
	format('Test case: years_until_retirement(\'~w\',~w,~w) passed.\n', [Name,Age,Years_to_retire])
        ; false
     )).

test_task_7(Names) :-
    forall(member(Name, Names),
           ((is_rd_black_midAge(Name, 'Research & Development', 'Black', Age),(\+ is_rd_black_midAge('TEST', 'Research & Development', 'Black', Age)))
	   -> true, % Test passed
	    format('Test case: is_rd_black_midAge(\'~w\') passed.\n', [Name])
           ; false)).

test_task_8(Names) :-
    % Test for each name in the list
    forall(member(Name, Names),
           (is_ITorFin_PHXorMIAorAUS(Name, Department, City)
	-> true, % Test passed
	format('Test case: is_ITorFin_PHXorMIAorAUS(\'~w\',\'~w\',\'~w\') passed.\n', [Name, Department, City])
           ; false)).

test_task_9(Names):-
    forall(member(Name, Names),
           (is_female_senior_role(Name, Job)
	 -> true, % Test passed
	 format('Test case: is_female_senior_role(\'~w\',\'~w\') passed.\n', [Name,Job])
           ;
	    false)).
test_task_10(Names) :-
    	% Test using name in the list
	forall(member(Name, Names),
           (is_highly_paid_senior_manager(Name, Salary)
	   -> true, % Test passed
	format('Test case: is_highly_paid_senior_manager(\'~w\',\'~w\') passed\n', [Name,Salary])
	   ; false)).

test_task_11(Names) :-
    % Test for each name in the list
    forall(member(Name, Names),
           ((is_prime_age(Name,Age) , (\+ is_prime_age('Emily Davis',_)))
	-> true, % Test passed
	format('Test case: is_prime_age(\'~w\') passed.\n', [Name])
	; false)).

test_task_12(TestCases):-
    % Iterate over each test case
    forall(member((Name, TotalSalary), TestCases),
           (   % Call the total_salary predicate with the name
               total_salary(Name, TotalSalary)
       -> true, % Test Passed
	format('Test case for total_salary(\'~w\',~w) passed.\n', [Name,TotalSalary])
       ; false)).

test_task_13(TestCases) :-
    forall(member((Name, Job, TakeHomeSalary), TestCases),
           (   % Call the takehome_salary predicate with the test case data
               takehome_salary(Name, Job, TakeHomeSalary)
       		-> true, % Test passed
		format('Test case for takehome_salary(\'~w\',\'~w\',~w) passed.\n', [Name, Job, TakeHomeSalary])
		; false)).

test_task_14(TestCases) :-
    % Iterate over each test case
    forall(member((Name,Years), TestCases),
           (
               total_years(Name,Years)
       		-> true, % Test passed
		 format('Test case for total_years(\'~w\',~w) passed.\n', [Name,Years])
               ; false
            )).

    %Data base
avg_salary_data('Account Representative', 62281.619047619046).
avg_salary_data('Analyst', 49950.666666666664).
avg_salary_data('Analyst II', 62647.47169811321).
avg_salary_data('Automation Engineer', 95106.85714285714).
avg_salary_data('Business Partner', 49559.78947368421).
avg_salary_data('Cloud Infrastructure Architect', 86961.33333333333).
avg_salary_data('Computer Systems Manager', 80346.80952380953).
avg_salary_data('Controls Engineer', 99626.13333333333).
avg_salary_data('Development Engineer', 77889.21052631579).
avg_salary_data('Director', 171633.85123966943).
avg_salary_data('Engineering Manager', 101853.8).
avg_salary_data('Enterprise Architect', 84698.66666666667).
avg_salary_data('Field Engineer', 78928.95238095238).
avg_salary_data('HRIS Analyst', 61760.375).
avg_salary_data('IT Coordinator', 48024.454545454544).
avg_salary_data('IT Systems Architect', 81496.83333333333).
avg_salary_data('Manager', 113275.6836734694).
avg_salary_data('Network Administrator', 75908.4).
avg_salary_data('Network Architect', 80092.55555555556).
avg_salary_data('Network Engineer', 74171.71428571429).
avg_salary_data('Operations Engineer', 101135.25).
avg_salary_data('Quality Engineer', 83564.4).
avg_salary_data('Service Desk Analyst', 82329.2).
avg_salary_data('Solutions Architect', 78163.26666666666).
avg_salary_data('Sr. Account Representative', 84808.22222222222).
avg_salary_data('Sr. Analyst', 86402.95714285714).
avg_salary_data('Sr. Business Partner', 85035.35294117648).
avg_salary_data('Sr. Manger', 141067.76363636364).
avg_salary_data('System Administrator', 79852.66666666667).
avg_salary_data('Systems Analyst', 48787.933333333334).
avg_salary_data('Technical Architect', 79773.82352941176).
avg_salary_data('Test Engineer', 74550.83333333333).
avg_salary_data('Vice President', 222195.17142857143).
% Test case for average_salary
test_task_15 :-
    forall(
        (avg_salary_data(Job_Title, ProvidedAvgSalary),
         average_salary(Job_Title, ComputedAvgSalary)),
         abs(ComputedAvgSalary-ProvidedAvgSalary) < 0.001),forall(average_salary(Job_Title, Avg_Salary),format('Job_Title: ~w, Average_Salary: ~w~n', [Job_Title, Avg_Salary])).


:- begin_tests(test).
test(person):- format('\n\nResult of ReadCSV.pl:\n'),test_read_csv.
test(is_seattle_employee) :- format('\nResult of Rule 1:\n'),test_task_1(['Emily Davis','Camila Rogers','Rylee Yu']).
test(is_senior_manager_in_IT) :- format('\nResult of Rule 2:\n'), test_task_2(['Emily Davis','Camila Li','Anthony Hong']).
test(is_director_finance_miami):- format('\nResult of Rule 3:\n'),test_task_3(['Miles Mehta','Andrew Coleman','Dylan Chin']).
test(is_asian_US_manufacturing_40M) :- format('\nResult of Rule 4:\n'), test_task_4(['Austin Vo','Everett Khan']).
test(greet) :- format('\nResult of Rule 5:\n'), test_task_5(['E02387','E00549']).
test(years_until_retirement) :- format('\nResult of Rule 6:\n'), test_task_6([('Emily Davis',55,10),('Penelope Jordan',26,39)]).
test(is_rd_black_midAge):- format('\nResult of Rule 7:\n'), test_task_7(['Eva Coleman','William Walker']).
test(is_ITorFin_PHXorMIAorAUS):- format('\nResult of Rule 8:\n'), test_task_8(['Austin Vo','Emilia Chu','Riley Padilla']).
test(is_female_senior_role):- format('\nResult of Rule 9:\n'), test_task_9(['Emily Davis', 'Madeline Walker', 'Gabriella Gupta']).
test(is_highly_paid_senior_manager):- format('\nResult of Rule 10:\n'), test_task_10(['Sadie Washington', 'Emily Davis', 'Peyton Huang', 'Mia Cheng']).
test(is_prime_age):- format('\nResult of Rule 11:\n'), test_task_11(['Theodore Dinh', 'Robert Yang', 'Logan Rivera']).
test(total_salary):- format('\nResult of Rule 12:\n'), test_task_12([('Emily Davis', 162844.6),('Theodore Dinh', 99975)]).
test(takehome_salary):- format('\nResult of Rule 13:\n'), test_task_13([('Raelynn Rios', 'Vice President', 226831.995),('Theodore Dinh', 'Technical Architect', 74981.25),('Luna Sanders', 'Director', 137003.16)]).
test(total_years):- format('\nResult of Rule 14:\n'), test_task_14([('Sofia Cheng',4), ('Leo Herrera',6), ('Alice Roberts',10),('Kinsley Martinez',31)]).
test(average_salary) :- format('\n\nResult of Rule 15:\n'),test_task_15.
:- end_tests(test).
% remove below if prolog version is around 9.x.x
%:- set_test_options([format(log)]).
:- set_prolog_flag(plunit_output, always).
run_tests_with_score:- run_tests(test).
