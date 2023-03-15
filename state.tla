--------------------------------- MODULE state ---------------------------------

EXTENDS  common, Naturals, FiniteSets, Sequences, TLC

CONSTANTS NODE_ID

VARIABLE v_id1
VARIABLE v_id2
VARIABLE v_state


v_vars == <<
    v_id1,
    v_id2,
    v_state
>>

Vars == <<
    v_vars
>>

Init ==
    /\ InitState(
        v_state,
        v_id1,
        NODE_ID)
    /\ v_id2 = [i \in NODE_ID |-> {}]


 
\* When we uncomment this line, the initial state would be OK
\* __WhyWeNeedThis == S2


----

SetState(i) == 
    /\ v_state[i] \in {S1}

Next ==
    UNCHANGED <<Vars>>

    
Spec == 
    /\ Init 
    /\ [][Next]_Vars
             

===============================================================================


