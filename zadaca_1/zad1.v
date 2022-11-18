Set Implicit Arguments.

(* 1. a) *)

Goal forall (X Y : Prop), ~(X /\ Y) \/ (~X /\ Y) \/ (~X /\ ~Y) <-> ~(X /\ Y).
Proof.
  intros. split.
   -intros A B. destruct A, B, H ; now intros.
   -intros. left. exact H.
Qed.

Goal forall (X Y : Prop), ~(X /\ Y) \/ (~X /\ Y) \/ (~X /\ ~Y) <-> ~(X /\ Y).
Proof.
   tauto.
Qed.

(* 2. a) *)

Goal forall (X Y Z : Prop), ~(~X /\ Y /\ ~Z) /\ ~(X /\ Y /\ Z) /\ (X /\ ~Y /\ ~Z) 
                            <-> (X /\ ~Y /\ ~Z).
Proof.
   intros. split.
    -intros. destruct H, H0. exact H1.
    -now intros.
Qed.

Goal forall (X Y Z : Prop), ~(~X /\ Y /\ ~Z) /\ ~(X /\ Y /\ Z) /\ (X /\ ~Y /\ ~Z) 
                            <-> (X /\ ~Y /\ ~Z).
Proof.
    tauto.
Qed.