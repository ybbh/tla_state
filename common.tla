------------------------------ MODULE common ------------------------------
EXTENDS  Naturals, FiniteSets, Sequences, TLC

----

S1 == "S1"
S2 == "S2"

StateSet == {
    S1, 
    S2
}
    
IsStateOK(
    _state,
    _node_id,
    _id
) ==
    CASE _state[_id] = S2 -> (
        TRUE
    )
    [] _state[_id] = S1 -> (
        /\ _node_id[_id] = _id
    )
    [] OTHER -> (
        TRUE
    ) 

__StateOK(
    _state,
    _node_id,
    _ids
) ==
    /\ \A i \in _ids:
        /\ IsStateOK(_state, _node_id, i)


    
_StateOK(
    _state,
    _node_id,
    _ids) ==
    /\ _state \in  [_ids -> StateSet]
    /\ _node_id \in [_ids -> _ids]
    /\ __StateOK(
        _state,
        _node_id,
        _ids
        )


InitState(
    _state,
    _node_id,
    _node_ids
    ) == 
    _StateOK(
        _state,
        _node_id,
        _node_ids
    )
    
=============================================================================