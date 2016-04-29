theory lemma_on_inv__115 imports n_flash_data_cub_base
begin
lemma n_NI_Local_Get_Put_HeadVsinv__115:
assumes a1: "(\<exists> src. src\<le>N\<and>r=n_NI_Local_Get_Put_Head N src)" and
a2: "(\<exists> p__Inv0. p__Inv0\<le>N\<and>f=inv__115  p__Inv0)"
shows "invHoldForRule' s f r (invariants N)" (is "?P1 s \<or> ?P2 s \<or> ?P3 s")
proof -
from a1 obtain src where a1:"src\<le>N\<and>r=n_NI_Local_Get_Put_Head N src" apply fastforce done
from a2 obtain p__Inv0 where a2:"p__Inv0\<le>N\<and>f=inv__115  p__Inv0" apply fastforce done
have "(src=p__Inv0)\<or>(src~=p__Inv0)" apply (cut_tac a1 a2, auto) done
moreover {
  assume b1: "(src=p__Inv0)"
  have "?P3 s"
  apply (cut_tac a1 a2 b1, simp, rule_tac x="(neg (andForm (eqn (IVar (Field (Field (Ident ''Sta'') ''NakcMsg'') ''Cmd'')) (Const NAKC_Nakc)) (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''Pending'')) (Const false))))" in exI, auto) done
  then have "invHoldForRule' s f r (invariants N)" by auto
}
moreover {
  assume b1: "(src~=p__Inv0)"
  have "?P3 s"
  apply (cut_tac a1 a2 b1, simp, rule_tac x="(neg (andForm (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''ShrSet'') p__Inv0)) (Const true)) (eqn (IVar (Field (Field (Ident ''Sta'') ''NakcMsg'') ''Cmd'')) (Const NAKC_Nakc))))" in exI, auto) done
  then have "invHoldForRule' s f r (invariants N)" by auto
}
ultimately show "invHoldForRule' s f r (invariants N)" by satx
qed

lemma n_NI_Remote_Get_NakVsinv__115:
assumes a1: "(\<exists> src dst. src\<le>N\<and>dst\<le>N\<and>src~=dst\<and>r=n_NI_Remote_Get_Nak  src dst)" and
a2: "(\<exists> p__Inv0. p__Inv0\<le>N\<and>f=inv__115  p__Inv0)"
shows "invHoldForRule' s f r (invariants N)" (is "?P1 s \<or> ?P2 s \<or> ?P3 s")
proof -
from a1 obtain src dst where a1:"src\<le>N\<and>dst\<le>N\<and>src~=dst\<and>r=n_NI_Remote_Get_Nak  src dst" apply fastforce done
from a2 obtain p__Inv0 where a2:"p__Inv0\<le>N\<and>f=inv__115  p__Inv0" apply fastforce done
have "(src=p__Inv0\<and>dst~=p__Inv0)\<or>(src~=p__Inv0\<and>dst=p__Inv0)\<or>(src~=p__Inv0\<and>dst~=p__Inv0)" apply (cut_tac a1 a2, auto) done
moreover {
  assume b1: "(src=p__Inv0\<and>dst~=p__Inv0)"
  have "?P3 s"
  apply (cut_tac a1 a2 b1, simp, rule_tac x="(neg (andForm (andForm (eqn (IVar (Field (Para (Field (Ident ''Sta'') ''UniMsg'') p__Inv0) ''Cmd'')) (Const UNI_Get)) (eqn (IVar (Field (Para (Field (Ident ''Sta'') ''UniMsg'') p__Inv0) ''HomeProc'')) (Const false))) (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''InvSet'') p__Inv0)) (Const true))))" in exI, auto) done
  then have "invHoldForRule' s f r (invariants N)" by auto
}
moreover {
  assume b1: "(src~=p__Inv0\<and>dst=p__Inv0)"
  have "?P3 s"
  apply (cut_tac a1 a2 b1, simp, rule_tac x="(neg (andForm (andForm (eqn (IVar (Field (Para (Field (Ident ''Sta'') ''UniMsg'') src) ''Cmd'')) (Const UNI_Get)) (eqn (IVar (Field (Para (Field (Ident ''Sta'') ''UniMsg'') src) ''HomeProc'')) (Const false))) (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''InvSet'') p__Inv0)) (Const true))))" in exI, auto) done
  then have "invHoldForRule' s f r (invariants N)" by auto
}
moreover {
  assume b1: "(src~=p__Inv0\<and>dst~=p__Inv0)"
  have "?P3 s"
  apply (cut_tac a1 a2 b1, simp, rule_tac x="(neg (andForm (andForm (eqn (IVar (Field (Para (Field (Ident ''Sta'') ''UniMsg'') src) ''Cmd'')) (Const UNI_Get)) (eqn (IVar (Field (Para (Field (Ident ''Sta'') ''UniMsg'') src) ''HomeProc'')) (Const false))) (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''InvSet'') p__Inv0)) (Const true))))" in exI, auto) done
  then have "invHoldForRule' s f r (invariants N)" by auto
}
ultimately show "invHoldForRule' s f r (invariants N)" by satx
qed

lemma n_NI_Remote_Get_Nak_HomeVsinv__115:
assumes a1: "(\<exists> dst. dst\<le>N\<and>r=n_NI_Remote_Get_Nak_Home  dst)" and
a2: "(\<exists> p__Inv0. p__Inv0\<le>N\<and>f=inv__115  p__Inv0)"
shows "invHoldForRule' s f r (invariants N)" (is "?P1 s \<or> ?P2 s \<or> ?P3 s")
proof -
from a1 obtain dst where a1:"dst\<le>N\<and>r=n_NI_Remote_Get_Nak_Home  dst" apply fastforce done
from a2 obtain p__Inv0 where a2:"p__Inv0\<le>N\<and>f=inv__115  p__Inv0" apply fastforce done
have "(dst=p__Inv0)\<or>(dst~=p__Inv0)" apply (cut_tac a1 a2, auto) done
moreover {
  assume b1: "(dst=p__Inv0)"
  have "?P3 s"
  apply (cut_tac a1 a2 b1, simp, rule_tac x="(neg (andForm (eqn (IVar (Field (Field (Ident ''Sta'') ''HomeUniMsg'') ''Cmd'')) (Const UNI_Get)) (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''InvSet'') p__Inv0)) (Const true))))" in exI, auto) done
  then have "invHoldForRule' s f r (invariants N)" by auto
}
moreover {
  assume b1: "(dst~=p__Inv0)"
  have "?P3 s"
  apply (cut_tac a1 a2 b1, simp, rule_tac x="(neg (andForm (eqn (IVar (Field (Field (Ident ''Sta'') ''HomeUniMsg'') ''Cmd'')) (Const UNI_Get)) (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''InvSet'') p__Inv0)) (Const true))))" in exI, auto) done
  then have "invHoldForRule' s f r (invariants N)" by auto
}
ultimately show "invHoldForRule' s f r (invariants N)" by satx
qed

lemma n_NI_Local_GetX_PutX_1Vsinv__115:
assumes a1: "(\<exists> src. src\<le>N\<and>r=n_NI_Local_GetX_PutX_1 N src)" and
a2: "(\<exists> p__Inv0. p__Inv0\<le>N\<and>f=inv__115  p__Inv0)"
shows "invHoldForRule' s f r (invariants N)" (is "?P1 s \<or> ?P2 s \<or> ?P3 s")
proof -
from a1 obtain src where a1:"src\<le>N\<and>r=n_NI_Local_GetX_PutX_1 N src" apply fastforce done
from a2 obtain p__Inv0 where a2:"p__Inv0\<le>N\<and>f=inv__115  p__Inv0" apply fastforce done
have "(src=p__Inv0)\<or>(src~=p__Inv0)" apply (cut_tac a1 a2, auto) done
moreover {
  assume b1: "(src=p__Inv0)"
  have "?P1 s"
  proof(cut_tac a1 a2 b1, auto) qed
  then have "invHoldForRule' s f r (invariants N)" by auto
}
moreover {
  assume b1: "(src~=p__Inv0)"
  have "?P1 s"
  proof(cut_tac a1 a2 b1, auto) qed
  then have "invHoldForRule' s f r (invariants N)" by auto
}
ultimately show "invHoldForRule' s f r (invariants N)" by satx
qed

lemma n_NI_Local_GetX_PutX_2Vsinv__115:
assumes a1: "(\<exists> src. src\<le>N\<and>r=n_NI_Local_GetX_PutX_2 N src)" and
a2: "(\<exists> p__Inv0. p__Inv0\<le>N\<and>f=inv__115  p__Inv0)"
shows "invHoldForRule' s f r (invariants N)" (is "?P1 s \<or> ?P2 s \<or> ?P3 s")
proof -
from a1 obtain src where a1:"src\<le>N\<and>r=n_NI_Local_GetX_PutX_2 N src" apply fastforce done
from a2 obtain p__Inv0 where a2:"p__Inv0\<le>N\<and>f=inv__115  p__Inv0" apply fastforce done
have "(src=p__Inv0)\<or>(src~=p__Inv0)" apply (cut_tac a1 a2, auto) done
moreover {
  assume b1: "(src=p__Inv0)"
  have "?P1 s"
  proof(cut_tac a1 a2 b1, auto) qed
  then have "invHoldForRule' s f r (invariants N)" by auto
}
moreover {
  assume b1: "(src~=p__Inv0)"
  have "?P1 s"
  proof(cut_tac a1 a2 b1, auto) qed
  then have "invHoldForRule' s f r (invariants N)" by auto
}
ultimately show "invHoldForRule' s f r (invariants N)" by satx
qed

lemma n_NI_Local_GetX_PutX_3Vsinv__115:
assumes a1: "(\<exists> src. src\<le>N\<and>r=n_NI_Local_GetX_PutX_3 N src)" and
a2: "(\<exists> p__Inv0. p__Inv0\<le>N\<and>f=inv__115  p__Inv0)"
shows "invHoldForRule' s f r (invariants N)" (is "?P1 s \<or> ?P2 s \<or> ?P3 s")
proof -
from a1 obtain src where a1:"src\<le>N\<and>r=n_NI_Local_GetX_PutX_3 N src" apply fastforce done
from a2 obtain p__Inv0 where a2:"p__Inv0\<le>N\<and>f=inv__115  p__Inv0" apply fastforce done
have "(src=p__Inv0)\<or>(src~=p__Inv0)" apply (cut_tac a1 a2, auto) done
moreover {
  assume b1: "(src=p__Inv0)"
  have "?P1 s"
  proof(cut_tac a1 a2 b1, auto) qed
  then have "invHoldForRule' s f r (invariants N)" by auto
}
moreover {
  assume b1: "(src~=p__Inv0)"
  have "?P1 s"
  proof(cut_tac a1 a2 b1, auto) qed
  then have "invHoldForRule' s f r (invariants N)" by auto
}
ultimately show "invHoldForRule' s f r (invariants N)" by satx
qed

lemma n_NI_Local_GetX_PutX_4Vsinv__115:
assumes a1: "(\<exists> src. src\<le>N\<and>r=n_NI_Local_GetX_PutX_4 N src)" and
a2: "(\<exists> p__Inv0. p__Inv0\<le>N\<and>f=inv__115  p__Inv0)"
shows "invHoldForRule' s f r (invariants N)" (is "?P1 s \<or> ?P2 s \<or> ?P3 s")
proof -
from a1 obtain src where a1:"src\<le>N\<and>r=n_NI_Local_GetX_PutX_4 N src" apply fastforce done
from a2 obtain p__Inv0 where a2:"p__Inv0\<le>N\<and>f=inv__115  p__Inv0" apply fastforce done
have "(src=p__Inv0)\<or>(src~=p__Inv0)" apply (cut_tac a1 a2, auto) done
moreover {
  assume b1: "(src=p__Inv0)"
  have "?P1 s"
  proof(cut_tac a1 a2 b1, auto) qed
  then have "invHoldForRule' s f r (invariants N)" by auto
}
moreover {
  assume b1: "(src~=p__Inv0)"
  have "?P1 s"
  proof(cut_tac a1 a2 b1, auto) qed
  then have "invHoldForRule' s f r (invariants N)" by auto
}
ultimately show "invHoldForRule' s f r (invariants N)" by satx
qed

lemma n_NI_Local_GetX_PutX_5Vsinv__115:
assumes a1: "(\<exists> src. src\<le>N\<and>r=n_NI_Local_GetX_PutX_5 N src)" and
a2: "(\<exists> p__Inv0. p__Inv0\<le>N\<and>f=inv__115  p__Inv0)"
shows "invHoldForRule' s f r (invariants N)" (is "?P1 s \<or> ?P2 s \<or> ?P3 s")
proof -
from a1 obtain src where a1:"src\<le>N\<and>r=n_NI_Local_GetX_PutX_5 N src" apply fastforce done
from a2 obtain p__Inv0 where a2:"p__Inv0\<le>N\<and>f=inv__115  p__Inv0" apply fastforce done
have "(src=p__Inv0)\<or>(src~=p__Inv0)" apply (cut_tac a1 a2, auto) done
moreover {
  assume b1: "(src=p__Inv0)"
  have "?P1 s"
  proof(cut_tac a1 a2 b1, auto) qed
  then have "invHoldForRule' s f r (invariants N)" by auto
}
moreover {
  assume b1: "(src~=p__Inv0)"
  have "?P1 s"
  proof(cut_tac a1 a2 b1, auto) qed
  then have "invHoldForRule' s f r (invariants N)" by auto
}
ultimately show "invHoldForRule' s f r (invariants N)" by satx
qed

lemma n_NI_Local_GetX_PutX_6Vsinv__115:
assumes a1: "(\<exists> src. src\<le>N\<and>r=n_NI_Local_GetX_PutX_6 N src)" and
a2: "(\<exists> p__Inv0. p__Inv0\<le>N\<and>f=inv__115  p__Inv0)"
shows "invHoldForRule' s f r (invariants N)" (is "?P1 s \<or> ?P2 s \<or> ?P3 s")
proof -
from a1 obtain src where a1:"src\<le>N\<and>r=n_NI_Local_GetX_PutX_6 N src" apply fastforce done
from a2 obtain p__Inv0 where a2:"p__Inv0\<le>N\<and>f=inv__115  p__Inv0" apply fastforce done
have "(src=p__Inv0)\<or>(src~=p__Inv0)" apply (cut_tac a1 a2, auto) done
moreover {
  assume b1: "(src=p__Inv0)"
  have "?P1 s"
  proof(cut_tac a1 a2 b1, auto) qed
  then have "invHoldForRule' s f r (invariants N)" by auto
}
moreover {
  assume b1: "(src~=p__Inv0)"
  have "?P1 s"
  proof(cut_tac a1 a2 b1, auto) qed
  then have "invHoldForRule' s f r (invariants N)" by auto
}
ultimately show "invHoldForRule' s f r (invariants N)" by satx
qed

lemma n_NI_Local_GetX_PutX_7__part__0Vsinv__115:
assumes a1: "(\<exists> src. src\<le>N\<and>r=n_NI_Local_GetX_PutX_7__part__0 N src)" and
a2: "(\<exists> p__Inv0. p__Inv0\<le>N\<and>f=inv__115  p__Inv0)"
shows "invHoldForRule' s f r (invariants N)" (is "?P1 s \<or> ?P2 s \<or> ?P3 s")
proof -
from a1 obtain src where a1:"src\<le>N\<and>r=n_NI_Local_GetX_PutX_7__part__0 N src" apply fastforce done
from a2 obtain p__Inv0 where a2:"p__Inv0\<le>N\<and>f=inv__115  p__Inv0" apply fastforce done
have "(src=p__Inv0)\<or>(src~=p__Inv0)" apply (cut_tac a1 a2, auto) done
moreover {
  assume b1: "(src=p__Inv0)"
  have "?P1 s"
  proof(cut_tac a1 a2 b1, auto) qed
  then have "invHoldForRule' s f r (invariants N)" by auto
}
moreover {
  assume b1: "(src~=p__Inv0)"
  have "((formEval (andForm (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true)) (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''ShrSet'') p__Inv0)) (Const true))) s))\<or>((formEval (andForm (andForm (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadVld'')) (Const true)) (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadPtr'')) (Const (index p__Inv0)))) (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HomeHeadPtr'')) (Const false))) s))\<or>((formEval (andForm (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadVld'')) (Const true)))) s))\<or>((formEval (andForm (neg (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''ShrSet'') p__Inv0)) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadVld'')) (Const true)))) s))\<or>((formEval (andForm (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadPtr'')) (Const (index p__Inv0))))) s))\<or>((formEval (andForm (neg (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''ShrSet'') p__Inv0)) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadPtr'')) (Const (index p__Inv0))))) s))\<or>((formEval (andForm (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HomeHeadPtr'')) (Const false)))) s))\<or>((formEval (andForm (neg (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''ShrSet'') p__Inv0)) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HomeHeadPtr'')) (Const false)))) s))" by auto
  moreover {
    assume c1: "((formEval (andForm (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true)) (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''ShrSet'') p__Inv0)) (Const true))) s))"
    have "?P3 s"
    apply (cut_tac a1 a2 b1 c1, simp, rule_tac x="(neg (andForm (eqn (IVar (Field (Field (Ident ''Sta'') ''NakcMsg'') ''Cmd'')) (Const NAKC_Nakc)) (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true))))" in exI, auto) done
    then have "invHoldForRule' s f r (invariants N)" by auto
  }
  moreover {
    assume c1: "((formEval (andForm (andForm (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadVld'')) (Const true)) (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadPtr'')) (Const (index p__Inv0)))) (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HomeHeadPtr'')) (Const false))) s))"
    have "?P1 s"
    proof(cut_tac a1 a2 b1 c1, auto) qed
    then have "invHoldForRule' s f r (invariants N)" by auto
  }
  moreover {
    assume c1: "((formEval (andForm (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadVld'')) (Const true)))) s))"
    have "?P1 s"
    proof(cut_tac a1 a2 b1 c1, auto) qed
    then have "invHoldForRule' s f r (invariants N)" by auto
  }
  moreover {
    assume c1: "((formEval (andForm (neg (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''ShrSet'') p__Inv0)) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadVld'')) (Const true)))) s))"
    have "?P1 s"
    proof(cut_tac a1 a2 b1 c1, auto) qed
    then have "invHoldForRule' s f r (invariants N)" by auto
  }
  moreover {
    assume c1: "((formEval (andForm (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadPtr'')) (Const (index p__Inv0))))) s))"
    have "?P1 s"
    proof(cut_tac a1 a2 b1 c1, auto) qed
    then have "invHoldForRule' s f r (invariants N)" by auto
  }
  moreover {
    assume c1: "((formEval (andForm (neg (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''ShrSet'') p__Inv0)) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadPtr'')) (Const (index p__Inv0))))) s))"
    have "?P1 s"
    proof(cut_tac a1 a2 b1 c1, auto) qed
    then have "invHoldForRule' s f r (invariants N)" by auto
  }
  moreover {
    assume c1: "((formEval (andForm (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HomeHeadPtr'')) (Const false)))) s))"
    have "?P1 s"
    proof(cut_tac a1 a2 b1 c1, auto) qed
    then have "invHoldForRule' s f r (invariants N)" by auto
  }
  moreover {
    assume c1: "((formEval (andForm (neg (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''ShrSet'') p__Inv0)) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HomeHeadPtr'')) (Const false)))) s))"
    have "?P1 s"
    proof(cut_tac a1 a2 b1 c1, auto) qed
    then have "invHoldForRule' s f r (invariants N)" by auto
  }
  ultimately have "invHoldForRule' s f r (invariants N)" by satx
}
ultimately show "invHoldForRule' s f r (invariants N)" by satx
qed

lemma n_NI_Local_GetX_PutX_7__part__1Vsinv__115:
assumes a1: "(\<exists> src. src\<le>N\<and>r=n_NI_Local_GetX_PutX_7__part__1 N src)" and
a2: "(\<exists> p__Inv0. p__Inv0\<le>N\<and>f=inv__115  p__Inv0)"
shows "invHoldForRule' s f r (invariants N)" (is "?P1 s \<or> ?P2 s \<or> ?P3 s")
proof -
from a1 obtain src where a1:"src\<le>N\<and>r=n_NI_Local_GetX_PutX_7__part__1 N src" apply fastforce done
from a2 obtain p__Inv0 where a2:"p__Inv0\<le>N\<and>f=inv__115  p__Inv0" apply fastforce done
have "(src=p__Inv0)\<or>(src~=p__Inv0)" apply (cut_tac a1 a2, auto) done
moreover {
  assume b1: "(src=p__Inv0)"
  have "?P1 s"
  proof(cut_tac a1 a2 b1, auto) qed
  then have "invHoldForRule' s f r (invariants N)" by auto
}
moreover {
  assume b1: "(src~=p__Inv0)"
  have "((formEval (andForm (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true)) (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''ShrSet'') p__Inv0)) (Const true))) s))\<or>((formEval (andForm (andForm (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadVld'')) (Const true)) (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadPtr'')) (Const (index p__Inv0)))) (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HomeHeadPtr'')) (Const false))) s))\<or>((formEval (andForm (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadVld'')) (Const true)))) s))\<or>((formEval (andForm (neg (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''ShrSet'') p__Inv0)) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadVld'')) (Const true)))) s))\<or>((formEval (andForm (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadPtr'')) (Const (index p__Inv0))))) s))\<or>((formEval (andForm (neg (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''ShrSet'') p__Inv0)) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadPtr'')) (Const (index p__Inv0))))) s))\<or>((formEval (andForm (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HomeHeadPtr'')) (Const false)))) s))\<or>((formEval (andForm (neg (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''ShrSet'') p__Inv0)) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HomeHeadPtr'')) (Const false)))) s))" by auto
  moreover {
    assume c1: "((formEval (andForm (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true)) (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''ShrSet'') p__Inv0)) (Const true))) s))"
    have "?P3 s"
    apply (cut_tac a1 a2 b1 c1, simp, rule_tac x="(neg (andForm (eqn (IVar (Field (Field (Ident ''Sta'') ''NakcMsg'') ''Cmd'')) (Const NAKC_Nakc)) (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true))))" in exI, auto) done
    then have "invHoldForRule' s f r (invariants N)" by auto
  }
  moreover {
    assume c1: "((formEval (andForm (andForm (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadVld'')) (Const true)) (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadPtr'')) (Const (index p__Inv0)))) (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HomeHeadPtr'')) (Const false))) s))"
    have "?P3 s"
    apply (cut_tac a1 a2 b1 c1, simp, rule_tac x="(neg (andForm (eqn (IVar (Field (Field (Ident ''Sta'') ''NakcMsg'') ''Cmd'')) (Const NAKC_Nakc)) (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''Local'')) (Const true))))" in exI, auto) done
    then have "invHoldForRule' s f r (invariants N)" by auto
  }
  moreover {
    assume c1: "((formEval (andForm (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadVld'')) (Const true)))) s))"
    have "?P1 s"
    proof(cut_tac a1 a2 b1 c1, auto) qed
    then have "invHoldForRule' s f r (invariants N)" by auto
  }
  moreover {
    assume c1: "((formEval (andForm (neg (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''ShrSet'') p__Inv0)) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadVld'')) (Const true)))) s))"
    have "?P1 s"
    proof(cut_tac a1 a2 b1 c1, auto) qed
    then have "invHoldForRule' s f r (invariants N)" by auto
  }
  moreover {
    assume c1: "((formEval (andForm (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadPtr'')) (Const (index p__Inv0))))) s))"
    have "?P1 s"
    proof(cut_tac a1 a2 b1 c1, auto) qed
    then have "invHoldForRule' s f r (invariants N)" by auto
  }
  moreover {
    assume c1: "((formEval (andForm (neg (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''ShrSet'') p__Inv0)) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadPtr'')) (Const (index p__Inv0))))) s))"
    have "?P1 s"
    proof(cut_tac a1 a2 b1 c1, auto) qed
    then have "invHoldForRule' s f r (invariants N)" by auto
  }
  moreover {
    assume c1: "((formEval (andForm (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HomeHeadPtr'')) (Const false)))) s))"
    have "?P1 s"
    proof(cut_tac a1 a2 b1 c1, auto) qed
    then have "invHoldForRule' s f r (invariants N)" by auto
  }
  moreover {
    assume c1: "((formEval (andForm (neg (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''ShrSet'') p__Inv0)) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HomeHeadPtr'')) (Const false)))) s))"
    have "?P1 s"
    proof(cut_tac a1 a2 b1 c1, auto) qed
    then have "invHoldForRule' s f r (invariants N)" by auto
  }
  ultimately have "invHoldForRule' s f r (invariants N)" by satx
}
ultimately show "invHoldForRule' s f r (invariants N)" by satx
qed

lemma n_NI_Local_GetX_PutX_7_NODE_Get__part__0Vsinv__115:
assumes a1: "(\<exists> src. src\<le>N\<and>r=n_NI_Local_GetX_PutX_7_NODE_Get__part__0 N src)" and
a2: "(\<exists> p__Inv0. p__Inv0\<le>N\<and>f=inv__115  p__Inv0)"
shows "invHoldForRule' s f r (invariants N)" (is "?P1 s \<or> ?P2 s \<or> ?P3 s")
proof -
from a1 obtain src where a1:"src\<le>N\<and>r=n_NI_Local_GetX_PutX_7_NODE_Get__part__0 N src" apply fastforce done
from a2 obtain p__Inv0 where a2:"p__Inv0\<le>N\<and>f=inv__115  p__Inv0" apply fastforce done
have "(src=p__Inv0)\<or>(src~=p__Inv0)" apply (cut_tac a1 a2, auto) done
moreover {
  assume b1: "(src=p__Inv0)"
  have "?P1 s"
  proof(cut_tac a1 a2 b1, auto) qed
  then have "invHoldForRule' s f r (invariants N)" by auto
}
moreover {
  assume b1: "(src~=p__Inv0)"
  have "((formEval (andForm (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true)) (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''ShrSet'') p__Inv0)) (Const true))) s))\<or>((formEval (andForm (andForm (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadVld'')) (Const true)) (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadPtr'')) (Const (index p__Inv0)))) (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HomeHeadPtr'')) (Const false))) s))\<or>((formEval (andForm (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadVld'')) (Const true)))) s))\<or>((formEval (andForm (neg (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''ShrSet'') p__Inv0)) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadVld'')) (Const true)))) s))\<or>((formEval (andForm (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadPtr'')) (Const (index p__Inv0))))) s))\<or>((formEval (andForm (neg (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''ShrSet'') p__Inv0)) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadPtr'')) (Const (index p__Inv0))))) s))\<or>((formEval (andForm (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HomeHeadPtr'')) (Const false)))) s))\<or>((formEval (andForm (neg (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''ShrSet'') p__Inv0)) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HomeHeadPtr'')) (Const false)))) s))" by auto
  moreover {
    assume c1: "((formEval (andForm (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true)) (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''ShrSet'') p__Inv0)) (Const true))) s))"
    have "?P3 s"
    apply (cut_tac a1 a2 b1 c1, simp, rule_tac x="(neg (andForm (eqn (IVar (Field (Field (Ident ''Sta'') ''NakcMsg'') ''Cmd'')) (Const NAKC_Nakc)) (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true))))" in exI, auto) done
    then have "invHoldForRule' s f r (invariants N)" by auto
  }
  moreover {
    assume c1: "((formEval (andForm (andForm (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadVld'')) (Const true)) (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadPtr'')) (Const (index p__Inv0)))) (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HomeHeadPtr'')) (Const false))) s))"
    have "?P1 s"
    proof(cut_tac a1 a2 b1 c1, auto) qed
    then have "invHoldForRule' s f r (invariants N)" by auto
  }
  moreover {
    assume c1: "((formEval (andForm (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadVld'')) (Const true)))) s))"
    have "?P1 s"
    proof(cut_tac a1 a2 b1 c1, auto) qed
    then have "invHoldForRule' s f r (invariants N)" by auto
  }
  moreover {
    assume c1: "((formEval (andForm (neg (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''ShrSet'') p__Inv0)) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadVld'')) (Const true)))) s))"
    have "?P1 s"
    proof(cut_tac a1 a2 b1 c1, auto) qed
    then have "invHoldForRule' s f r (invariants N)" by auto
  }
  moreover {
    assume c1: "((formEval (andForm (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadPtr'')) (Const (index p__Inv0))))) s))"
    have "?P1 s"
    proof(cut_tac a1 a2 b1 c1, auto) qed
    then have "invHoldForRule' s f r (invariants N)" by auto
  }
  moreover {
    assume c1: "((formEval (andForm (neg (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''ShrSet'') p__Inv0)) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadPtr'')) (Const (index p__Inv0))))) s))"
    have "?P1 s"
    proof(cut_tac a1 a2 b1 c1, auto) qed
    then have "invHoldForRule' s f r (invariants N)" by auto
  }
  moreover {
    assume c1: "((formEval (andForm (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HomeHeadPtr'')) (Const false)))) s))"
    have "?P1 s"
    proof(cut_tac a1 a2 b1 c1, auto) qed
    then have "invHoldForRule' s f r (invariants N)" by auto
  }
  moreover {
    assume c1: "((formEval (andForm (neg (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''ShrSet'') p__Inv0)) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HomeHeadPtr'')) (Const false)))) s))"
    have "?P1 s"
    proof(cut_tac a1 a2 b1 c1, auto) qed
    then have "invHoldForRule' s f r (invariants N)" by auto
  }
  ultimately have "invHoldForRule' s f r (invariants N)" by satx
}
ultimately show "invHoldForRule' s f r (invariants N)" by satx
qed

lemma n_NI_Local_GetX_PutX_7_NODE_Get__part__1Vsinv__115:
assumes a1: "(\<exists> src. src\<le>N\<and>r=n_NI_Local_GetX_PutX_7_NODE_Get__part__1 N src)" and
a2: "(\<exists> p__Inv0. p__Inv0\<le>N\<and>f=inv__115  p__Inv0)"
shows "invHoldForRule' s f r (invariants N)" (is "?P1 s \<or> ?P2 s \<or> ?P3 s")
proof -
from a1 obtain src where a1:"src\<le>N\<and>r=n_NI_Local_GetX_PutX_7_NODE_Get__part__1 N src" apply fastforce done
from a2 obtain p__Inv0 where a2:"p__Inv0\<le>N\<and>f=inv__115  p__Inv0" apply fastforce done
have "(src=p__Inv0)\<or>(src~=p__Inv0)" apply (cut_tac a1 a2, auto) done
moreover {
  assume b1: "(src=p__Inv0)"
  have "?P1 s"
  proof(cut_tac a1 a2 b1, auto) qed
  then have "invHoldForRule' s f r (invariants N)" by auto
}
moreover {
  assume b1: "(src~=p__Inv0)"
  have "((formEval (andForm (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true)) (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''ShrSet'') p__Inv0)) (Const true))) s))\<or>((formEval (andForm (andForm (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadVld'')) (Const true)) (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadPtr'')) (Const (index p__Inv0)))) (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HomeHeadPtr'')) (Const false))) s))\<or>((formEval (andForm (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadVld'')) (Const true)))) s))\<or>((formEval (andForm (neg (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''ShrSet'') p__Inv0)) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadVld'')) (Const true)))) s))\<or>((formEval (andForm (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadPtr'')) (Const (index p__Inv0))))) s))\<or>((formEval (andForm (neg (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''ShrSet'') p__Inv0)) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadPtr'')) (Const (index p__Inv0))))) s))\<or>((formEval (andForm (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HomeHeadPtr'')) (Const false)))) s))\<or>((formEval (andForm (neg (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''ShrSet'') p__Inv0)) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HomeHeadPtr'')) (Const false)))) s))" by auto
  moreover {
    assume c1: "((formEval (andForm (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true)) (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''ShrSet'') p__Inv0)) (Const true))) s))"
    have "?P3 s"
    apply (cut_tac a1 a2 b1 c1, simp, rule_tac x="(neg (andForm (eqn (IVar (Field (Field (Ident ''Sta'') ''NakcMsg'') ''Cmd'')) (Const NAKC_Nakc)) (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true))))" in exI, auto) done
    then have "invHoldForRule' s f r (invariants N)" by auto
  }
  moreover {
    assume c1: "((formEval (andForm (andForm (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadVld'')) (Const true)) (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadPtr'')) (Const (index p__Inv0)))) (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HomeHeadPtr'')) (Const false))) s))"
    have "?P3 s"
    apply (cut_tac a1 a2 b1 c1, simp, rule_tac x="(neg (andForm (eqn (IVar (Field (Field (Ident ''Sta'') ''NakcMsg'') ''Cmd'')) (Const NAKC_Nakc)) (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''Local'')) (Const true))))" in exI, auto) done
    then have "invHoldForRule' s f r (invariants N)" by auto
  }
  moreover {
    assume c1: "((formEval (andForm (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadVld'')) (Const true)))) s))"
    have "?P1 s"
    proof(cut_tac a1 a2 b1 c1, auto) qed
    then have "invHoldForRule' s f r (invariants N)" by auto
  }
  moreover {
    assume c1: "((formEval (andForm (neg (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''ShrSet'') p__Inv0)) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadVld'')) (Const true)))) s))"
    have "?P1 s"
    proof(cut_tac a1 a2 b1 c1, auto) qed
    then have "invHoldForRule' s f r (invariants N)" by auto
  }
  moreover {
    assume c1: "((formEval (andForm (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadPtr'')) (Const (index p__Inv0))))) s))"
    have "?P1 s"
    proof(cut_tac a1 a2 b1 c1, auto) qed
    then have "invHoldForRule' s f r (invariants N)" by auto
  }
  moreover {
    assume c1: "((formEval (andForm (neg (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''ShrSet'') p__Inv0)) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadPtr'')) (Const (index p__Inv0))))) s))"
    have "?P1 s"
    proof(cut_tac a1 a2 b1 c1, auto) qed
    then have "invHoldForRule' s f r (invariants N)" by auto
  }
  moreover {
    assume c1: "((formEval (andForm (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HomeHeadPtr'')) (Const false)))) s))"
    have "?P1 s"
    proof(cut_tac a1 a2 b1 c1, auto) qed
    then have "invHoldForRule' s f r (invariants N)" by auto
  }
  moreover {
    assume c1: "((formEval (andForm (neg (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''ShrSet'') p__Inv0)) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HomeHeadPtr'')) (Const false)))) s))"
    have "?P1 s"
    proof(cut_tac a1 a2 b1 c1, auto) qed
    then have "invHoldForRule' s f r (invariants N)" by auto
  }
  ultimately have "invHoldForRule' s f r (invariants N)" by satx
}
ultimately show "invHoldForRule' s f r (invariants N)" by satx
qed

lemma n_NI_Local_GetX_PutX_8_HomeVsinv__115:
assumes a1: "(\<exists> src. src\<le>N\<and>r=n_NI_Local_GetX_PutX_8_Home N src)" and
a2: "(\<exists> p__Inv0. p__Inv0\<le>N\<and>f=inv__115  p__Inv0)"
shows "invHoldForRule' s f r (invariants N)" (is "?P1 s \<or> ?P2 s \<or> ?P3 s")
proof -
from a1 obtain src where a1:"src\<le>N\<and>r=n_NI_Local_GetX_PutX_8_Home N src" apply fastforce done
from a2 obtain p__Inv0 where a2:"p__Inv0\<le>N\<and>f=inv__115  p__Inv0" apply fastforce done
have "(src=p__Inv0)\<or>(src~=p__Inv0)" apply (cut_tac a1 a2, auto) done
moreover {
  assume b1: "(src=p__Inv0)"
  have "?P1 s"
  proof(cut_tac a1 a2 b1, auto) qed
  then have "invHoldForRule' s f r (invariants N)" by auto
}
moreover {
  assume b1: "(src~=p__Inv0)"
  have "((formEval (andForm (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true)) (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''ShrSet'') p__Inv0)) (Const true))) s))\<or>((formEval (andForm (andForm (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadVld'')) (Const true)) (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadPtr'')) (Const (index p__Inv0)))) (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HomeHeadPtr'')) (Const false))) s))\<or>((formEval (andForm (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadVld'')) (Const true)))) s))\<or>((formEval (andForm (neg (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''ShrSet'') p__Inv0)) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadVld'')) (Const true)))) s))\<or>((formEval (andForm (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadPtr'')) (Const (index p__Inv0))))) s))\<or>((formEval (andForm (neg (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''ShrSet'') p__Inv0)) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadPtr'')) (Const (index p__Inv0))))) s))\<or>((formEval (andForm (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HomeHeadPtr'')) (Const false)))) s))\<or>((formEval (andForm (neg (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''ShrSet'') p__Inv0)) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HomeHeadPtr'')) (Const false)))) s))" by auto
  moreover {
    assume c1: "((formEval (andForm (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true)) (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''ShrSet'') p__Inv0)) (Const true))) s))"
    have "?P3 s"
    apply (cut_tac a1 a2 b1 c1, simp, rule_tac x="(neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HomeShrSet'')) (Const true)))" in exI, auto) done
    then have "invHoldForRule' s f r (invariants N)" by auto
  }
  moreover {
    assume c1: "((formEval (andForm (andForm (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadVld'')) (Const true)) (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadPtr'')) (Const (index p__Inv0)))) (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HomeHeadPtr'')) (Const false))) s))"
    have "?P1 s"
    proof(cut_tac a1 a2 b1 c1, auto) qed
    then have "invHoldForRule' s f r (invariants N)" by auto
  }
  moreover {
    assume c1: "((formEval (andForm (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadVld'')) (Const true)))) s))"
    have "?P1 s"
    proof(cut_tac a1 a2 b1 c1, auto) qed
    then have "invHoldForRule' s f r (invariants N)" by auto
  }
  moreover {
    assume c1: "((formEval (andForm (neg (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''ShrSet'') p__Inv0)) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadVld'')) (Const true)))) s))"
    have "?P1 s"
    proof(cut_tac a1 a2 b1 c1, auto) qed
    then have "invHoldForRule' s f r (invariants N)" by auto
  }
  moreover {
    assume c1: "((formEval (andForm (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadPtr'')) (Const (index p__Inv0))))) s))"
    have "?P1 s"
    proof(cut_tac a1 a2 b1 c1, auto) qed
    then have "invHoldForRule' s f r (invariants N)" by auto
  }
  moreover {
    assume c1: "((formEval (andForm (neg (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''ShrSet'') p__Inv0)) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadPtr'')) (Const (index p__Inv0))))) s))"
    have "?P1 s"
    proof(cut_tac a1 a2 b1 c1, auto) qed
    then have "invHoldForRule' s f r (invariants N)" by auto
  }
  moreover {
    assume c1: "((formEval (andForm (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HomeHeadPtr'')) (Const false)))) s))"
    have "?P1 s"
    proof(cut_tac a1 a2 b1 c1, auto) qed
    then have "invHoldForRule' s f r (invariants N)" by auto
  }
  moreover {
    assume c1: "((formEval (andForm (neg (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''ShrSet'') p__Inv0)) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HomeHeadPtr'')) (Const false)))) s))"
    have "?P1 s"
    proof(cut_tac a1 a2 b1 c1, auto) qed
    then have "invHoldForRule' s f r (invariants N)" by auto
  }
  ultimately have "invHoldForRule' s f r (invariants N)" by satx
}
ultimately show "invHoldForRule' s f r (invariants N)" by satx
qed

lemma n_NI_Local_GetX_PutX_8_Home_NODE_GetVsinv__115:
assumes a1: "(\<exists> src. src\<le>N\<and>r=n_NI_Local_GetX_PutX_8_Home_NODE_Get N src)" and
a2: "(\<exists> p__Inv0. p__Inv0\<le>N\<and>f=inv__115  p__Inv0)"
shows "invHoldForRule' s f r (invariants N)" (is "?P1 s \<or> ?P2 s \<or> ?P3 s")
proof -
from a1 obtain src where a1:"src\<le>N\<and>r=n_NI_Local_GetX_PutX_8_Home_NODE_Get N src" apply fastforce done
from a2 obtain p__Inv0 where a2:"p__Inv0\<le>N\<and>f=inv__115  p__Inv0" apply fastforce done
have "(src=p__Inv0)\<or>(src~=p__Inv0)" apply (cut_tac a1 a2, auto) done
moreover {
  assume b1: "(src=p__Inv0)"
  have "?P1 s"
  proof(cut_tac a1 a2 b1, auto) qed
  then have "invHoldForRule' s f r (invariants N)" by auto
}
moreover {
  assume b1: "(src~=p__Inv0)"
  have "((formEval (andForm (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true)) (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''ShrSet'') p__Inv0)) (Const true))) s))\<or>((formEval (andForm (andForm (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadVld'')) (Const true)) (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadPtr'')) (Const (index p__Inv0)))) (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HomeHeadPtr'')) (Const false))) s))\<or>((formEval (andForm (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadVld'')) (Const true)))) s))\<or>((formEval (andForm (neg (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''ShrSet'') p__Inv0)) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadVld'')) (Const true)))) s))\<or>((formEval (andForm (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadPtr'')) (Const (index p__Inv0))))) s))\<or>((formEval (andForm (neg (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''ShrSet'') p__Inv0)) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadPtr'')) (Const (index p__Inv0))))) s))\<or>((formEval (andForm (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HomeHeadPtr'')) (Const false)))) s))\<or>((formEval (andForm (neg (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''ShrSet'') p__Inv0)) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HomeHeadPtr'')) (Const false)))) s))" by auto
  moreover {
    assume c1: "((formEval (andForm (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true)) (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''ShrSet'') p__Inv0)) (Const true))) s))"
    have "?P3 s"
    apply (cut_tac a1 a2 b1 c1, simp, rule_tac x="(neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HomeShrSet'')) (Const true)))" in exI, auto) done
    then have "invHoldForRule' s f r (invariants N)" by auto
  }
  moreover {
    assume c1: "((formEval (andForm (andForm (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadVld'')) (Const true)) (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadPtr'')) (Const (index p__Inv0)))) (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HomeHeadPtr'')) (Const false))) s))"
    have "?P1 s"
    proof(cut_tac a1 a2 b1 c1, auto) qed
    then have "invHoldForRule' s f r (invariants N)" by auto
  }
  moreover {
    assume c1: "((formEval (andForm (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadVld'')) (Const true)))) s))"
    have "?P1 s"
    proof(cut_tac a1 a2 b1 c1, auto) qed
    then have "invHoldForRule' s f r (invariants N)" by auto
  }
  moreover {
    assume c1: "((formEval (andForm (neg (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''ShrSet'') p__Inv0)) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadVld'')) (Const true)))) s))"
    have "?P1 s"
    proof(cut_tac a1 a2 b1 c1, auto) qed
    then have "invHoldForRule' s f r (invariants N)" by auto
  }
  moreover {
    assume c1: "((formEval (andForm (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadPtr'')) (Const (index p__Inv0))))) s))"
    have "?P1 s"
    proof(cut_tac a1 a2 b1 c1, auto) qed
    then have "invHoldForRule' s f r (invariants N)" by auto
  }
  moreover {
    assume c1: "((formEval (andForm (neg (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''ShrSet'') p__Inv0)) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadPtr'')) (Const (index p__Inv0))))) s))"
    have "?P1 s"
    proof(cut_tac a1 a2 b1 c1, auto) qed
    then have "invHoldForRule' s f r (invariants N)" by auto
  }
  moreover {
    assume c1: "((formEval (andForm (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HomeHeadPtr'')) (Const false)))) s))"
    have "?P1 s"
    proof(cut_tac a1 a2 b1 c1, auto) qed
    then have "invHoldForRule' s f r (invariants N)" by auto
  }
  moreover {
    assume c1: "((formEval (andForm (neg (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''ShrSet'') p__Inv0)) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HomeHeadPtr'')) (Const false)))) s))"
    have "?P1 s"
    proof(cut_tac a1 a2 b1 c1, auto) qed
    then have "invHoldForRule' s f r (invariants N)" by auto
  }
  ultimately have "invHoldForRule' s f r (invariants N)" by satx
}
ultimately show "invHoldForRule' s f r (invariants N)" by satx
qed

lemma n_NI_Local_GetX_PutX_8Vsinv__115:
assumes a1: "(\<exists> src pp. src\<le>N\<and>pp\<le>N\<and>src~=pp\<and>r=n_NI_Local_GetX_PutX_8 N src pp)" and
a2: "(\<exists> p__Inv0. p__Inv0\<le>N\<and>f=inv__115  p__Inv0)"
shows "invHoldForRule' s f r (invariants N)" (is "?P1 s \<or> ?P2 s \<or> ?P3 s")
proof -
from a1 obtain src pp where a1:"src\<le>N\<and>pp\<le>N\<and>src~=pp\<and>r=n_NI_Local_GetX_PutX_8 N src pp" apply fastforce done
from a2 obtain p__Inv0 where a2:"p__Inv0\<le>N\<and>f=inv__115  p__Inv0" apply fastforce done
have "(src=p__Inv0\<and>pp~=p__Inv0)\<or>(src~=p__Inv0\<and>pp=p__Inv0)\<or>(src~=p__Inv0\<and>pp~=p__Inv0)" apply (cut_tac a1 a2, auto) done
moreover {
  assume b1: "(src=p__Inv0\<and>pp~=p__Inv0)"
  have "?P1 s"
  proof(cut_tac a1 a2 b1, auto) qed
  then have "invHoldForRule' s f r (invariants N)" by auto
}
moreover {
  assume b1: "(src~=p__Inv0\<and>pp=p__Inv0)"
  have "((formEval (andForm (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true)) (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''ShrSet'') p__Inv0)) (Const true))) s))\<or>((formEval (andForm (andForm (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadVld'')) (Const true)) (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadPtr'')) (Const (index p__Inv0)))) (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HomeHeadPtr'')) (Const false))) s))\<or>((formEval (andForm (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadVld'')) (Const true)))) s))\<or>((formEval (andForm (neg (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''ShrSet'') p__Inv0)) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadVld'')) (Const true)))) s))\<or>((formEval (andForm (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadPtr'')) (Const (index p__Inv0))))) s))\<or>((formEval (andForm (neg (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''ShrSet'') p__Inv0)) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadPtr'')) (Const (index p__Inv0))))) s))\<or>((formEval (andForm (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HomeHeadPtr'')) (Const false)))) s))\<or>((formEval (andForm (neg (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''ShrSet'') p__Inv0)) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HomeHeadPtr'')) (Const false)))) s))" by auto
  moreover {
    assume c1: "((formEval (andForm (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true)) (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''ShrSet'') p__Inv0)) (Const true))) s))"
    have "?P3 s"
    apply (cut_tac a1 a2 b1 c1, simp, rule_tac x="(neg (andForm (eqn (IVar (Field (Field (Ident ''Sta'') ''NakcMsg'') ''Cmd'')) (Const NAKC_Nakc)) (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true))))" in exI, auto) done
    then have "invHoldForRule' s f r (invariants N)" by auto
  }
  moreover {
    assume c1: "((formEval (andForm (andForm (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadVld'')) (Const true)) (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadPtr'')) (Const (index p__Inv0)))) (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HomeHeadPtr'')) (Const false))) s))"
    have "?P1 s"
    proof(cut_tac a1 a2 b1 c1, auto) qed
    then have "invHoldForRule' s f r (invariants N)" by auto
  }
  moreover {
    assume c1: "((formEval (andForm (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadVld'')) (Const true)))) s))"
    have "?P1 s"
    proof(cut_tac a1 a2 b1 c1, auto) qed
    then have "invHoldForRule' s f r (invariants N)" by auto
  }
  moreover {
    assume c1: "((formEval (andForm (neg (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''ShrSet'') p__Inv0)) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadVld'')) (Const true)))) s))"
    have "?P1 s"
    proof(cut_tac a1 a2 b1 c1, auto) qed
    then have "invHoldForRule' s f r (invariants N)" by auto
  }
  moreover {
    assume c1: "((formEval (andForm (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadPtr'')) (Const (index p__Inv0))))) s))"
    have "?P1 s"
    proof(cut_tac a1 a2 b1 c1, auto) qed
    then have "invHoldForRule' s f r (invariants N)" by auto
  }
  moreover {
    assume c1: "((formEval (andForm (neg (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''ShrSet'') p__Inv0)) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadPtr'')) (Const (index p__Inv0))))) s))"
    have "?P1 s"
    proof(cut_tac a1 a2 b1 c1, auto) qed
    then have "invHoldForRule' s f r (invariants N)" by auto
  }
  moreover {
    assume c1: "((formEval (andForm (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HomeHeadPtr'')) (Const false)))) s))"
    have "?P1 s"
    proof(cut_tac a1 a2 b1 c1, auto) qed
    then have "invHoldForRule' s f r (invariants N)" by auto
  }
  moreover {
    assume c1: "((formEval (andForm (neg (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''ShrSet'') p__Inv0)) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HomeHeadPtr'')) (Const false)))) s))"
    have "?P1 s"
    proof(cut_tac a1 a2 b1 c1, auto) qed
    then have "invHoldForRule' s f r (invariants N)" by auto
  }
  ultimately have "invHoldForRule' s f r (invariants N)" by satx
}
moreover {
  assume b1: "(src~=p__Inv0\<and>pp~=p__Inv0)"
  have "((formEval (andForm (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true)) (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''ShrSet'') p__Inv0)) (Const true))) s))\<or>((formEval (andForm (andForm (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadVld'')) (Const true)) (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadPtr'')) (Const (index p__Inv0)))) (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HomeHeadPtr'')) (Const false))) s))\<or>((formEval (andForm (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadVld'')) (Const true)))) s))\<or>((formEval (andForm (neg (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''ShrSet'') p__Inv0)) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadVld'')) (Const true)))) s))\<or>((formEval (andForm (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadPtr'')) (Const (index p__Inv0))))) s))\<or>((formEval (andForm (neg (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''ShrSet'') p__Inv0)) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadPtr'')) (Const (index p__Inv0))))) s))\<or>((formEval (andForm (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HomeHeadPtr'')) (Const false)))) s))\<or>((formEval (andForm (neg (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''ShrSet'') p__Inv0)) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HomeHeadPtr'')) (Const false)))) s))" by auto
  moreover {
    assume c1: "((formEval (andForm (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true)) (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''ShrSet'') p__Inv0)) (Const true))) s))"
    have "?P3 s"
    apply (cut_tac a1 a2 b1 c1, simp, rule_tac x="(neg (andForm (eqn (IVar (Field (Field (Ident ''Sta'') ''NakcMsg'') ''Cmd'')) (Const NAKC_Nakc)) (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true))))" in exI, auto) done
    then have "invHoldForRule' s f r (invariants N)" by auto
  }
  moreover {
    assume c1: "((formEval (andForm (andForm (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadVld'')) (Const true)) (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadPtr'')) (Const (index p__Inv0)))) (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HomeHeadPtr'')) (Const false))) s))"
    have "?P1 s"
    proof(cut_tac a1 a2 b1 c1, auto) qed
    then have "invHoldForRule' s f r (invariants N)" by auto
  }
  moreover {
    assume c1: "((formEval (andForm (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadVld'')) (Const true)))) s))"
    have "?P1 s"
    proof(cut_tac a1 a2 b1 c1, auto) qed
    then have "invHoldForRule' s f r (invariants N)" by auto
  }
  moreover {
    assume c1: "((formEval (andForm (neg (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''ShrSet'') p__Inv0)) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadVld'')) (Const true)))) s))"
    have "?P1 s"
    proof(cut_tac a1 a2 b1 c1, auto) qed
    then have "invHoldForRule' s f r (invariants N)" by auto
  }
  moreover {
    assume c1: "((formEval (andForm (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadPtr'')) (Const (index p__Inv0))))) s))"
    have "?P1 s"
    proof(cut_tac a1 a2 b1 c1, auto) qed
    then have "invHoldForRule' s f r (invariants N)" by auto
  }
  moreover {
    assume c1: "((formEval (andForm (neg (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''ShrSet'') p__Inv0)) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadPtr'')) (Const (index p__Inv0))))) s))"
    have "?P1 s"
    proof(cut_tac a1 a2 b1 c1, auto) qed
    then have "invHoldForRule' s f r (invariants N)" by auto
  }
  moreover {
    assume c1: "((formEval (andForm (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HomeHeadPtr'')) (Const false)))) s))"
    have "?P1 s"
    proof(cut_tac a1 a2 b1 c1, auto) qed
    then have "invHoldForRule' s f r (invariants N)" by auto
  }
  moreover {
    assume c1: "((formEval (andForm (neg (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''ShrSet'') p__Inv0)) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HomeHeadPtr'')) (Const false)))) s))"
    have "?P1 s"
    proof(cut_tac a1 a2 b1 c1, auto) qed
    then have "invHoldForRule' s f r (invariants N)" by auto
  }
  ultimately have "invHoldForRule' s f r (invariants N)" by satx
}
ultimately show "invHoldForRule' s f r (invariants N)" by satx
qed

lemma n_NI_Local_GetX_PutX_8_NODE_GetVsinv__115:
assumes a1: "(\<exists> src pp. src\<le>N\<and>pp\<le>N\<and>src~=pp\<and>r=n_NI_Local_GetX_PutX_8_NODE_Get N src pp)" and
a2: "(\<exists> p__Inv0. p__Inv0\<le>N\<and>f=inv__115  p__Inv0)"
shows "invHoldForRule' s f r (invariants N)" (is "?P1 s \<or> ?P2 s \<or> ?P3 s")
proof -
from a1 obtain src pp where a1:"src\<le>N\<and>pp\<le>N\<and>src~=pp\<and>r=n_NI_Local_GetX_PutX_8_NODE_Get N src pp" apply fastforce done
from a2 obtain p__Inv0 where a2:"p__Inv0\<le>N\<and>f=inv__115  p__Inv0" apply fastforce done
have "(src=p__Inv0\<and>pp~=p__Inv0)\<or>(src~=p__Inv0\<and>pp=p__Inv0)\<or>(src~=p__Inv0\<and>pp~=p__Inv0)" apply (cut_tac a1 a2, auto) done
moreover {
  assume b1: "(src=p__Inv0\<and>pp~=p__Inv0)"
  have "?P1 s"
  proof(cut_tac a1 a2 b1, auto) qed
  then have "invHoldForRule' s f r (invariants N)" by auto
}
moreover {
  assume b1: "(src~=p__Inv0\<and>pp=p__Inv0)"
  have "((formEval (andForm (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true)) (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''ShrSet'') p__Inv0)) (Const true))) s))\<or>((formEval (andForm (andForm (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadVld'')) (Const true)) (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadPtr'')) (Const (index p__Inv0)))) (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HomeHeadPtr'')) (Const false))) s))\<or>((formEval (andForm (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadVld'')) (Const true)))) s))\<or>((formEval (andForm (neg (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''ShrSet'') p__Inv0)) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadVld'')) (Const true)))) s))\<or>((formEval (andForm (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadPtr'')) (Const (index p__Inv0))))) s))\<or>((formEval (andForm (neg (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''ShrSet'') p__Inv0)) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadPtr'')) (Const (index p__Inv0))))) s))\<or>((formEval (andForm (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HomeHeadPtr'')) (Const false)))) s))\<or>((formEval (andForm (neg (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''ShrSet'') p__Inv0)) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HomeHeadPtr'')) (Const false)))) s))" by auto
  moreover {
    assume c1: "((formEval (andForm (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true)) (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''ShrSet'') p__Inv0)) (Const true))) s))"
    have "?P3 s"
    apply (cut_tac a1 a2 b1 c1, simp, rule_tac x="(neg (andForm (eqn (IVar (Field (Field (Ident ''Sta'') ''NakcMsg'') ''Cmd'')) (Const NAKC_Nakc)) (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true))))" in exI, auto) done
    then have "invHoldForRule' s f r (invariants N)" by auto
  }
  moreover {
    assume c1: "((formEval (andForm (andForm (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadVld'')) (Const true)) (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadPtr'')) (Const (index p__Inv0)))) (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HomeHeadPtr'')) (Const false))) s))"
    have "?P1 s"
    proof(cut_tac a1 a2 b1 c1, auto) qed
    then have "invHoldForRule' s f r (invariants N)" by auto
  }
  moreover {
    assume c1: "((formEval (andForm (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadVld'')) (Const true)))) s))"
    have "?P1 s"
    proof(cut_tac a1 a2 b1 c1, auto) qed
    then have "invHoldForRule' s f r (invariants N)" by auto
  }
  moreover {
    assume c1: "((formEval (andForm (neg (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''ShrSet'') p__Inv0)) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadVld'')) (Const true)))) s))"
    have "?P1 s"
    proof(cut_tac a1 a2 b1 c1, auto) qed
    then have "invHoldForRule' s f r (invariants N)" by auto
  }
  moreover {
    assume c1: "((formEval (andForm (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadPtr'')) (Const (index p__Inv0))))) s))"
    have "?P1 s"
    proof(cut_tac a1 a2 b1 c1, auto) qed
    then have "invHoldForRule' s f r (invariants N)" by auto
  }
  moreover {
    assume c1: "((formEval (andForm (neg (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''ShrSet'') p__Inv0)) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadPtr'')) (Const (index p__Inv0))))) s))"
    have "?P1 s"
    proof(cut_tac a1 a2 b1 c1, auto) qed
    then have "invHoldForRule' s f r (invariants N)" by auto
  }
  moreover {
    assume c1: "((formEval (andForm (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HomeHeadPtr'')) (Const false)))) s))"
    have "?P1 s"
    proof(cut_tac a1 a2 b1 c1, auto) qed
    then have "invHoldForRule' s f r (invariants N)" by auto
  }
  moreover {
    assume c1: "((formEval (andForm (neg (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''ShrSet'') p__Inv0)) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HomeHeadPtr'')) (Const false)))) s))"
    have "?P1 s"
    proof(cut_tac a1 a2 b1 c1, auto) qed
    then have "invHoldForRule' s f r (invariants N)" by auto
  }
  ultimately have "invHoldForRule' s f r (invariants N)" by satx
}
moreover {
  assume b1: "(src~=p__Inv0\<and>pp~=p__Inv0)"
  have "((formEval (andForm (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true)) (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''ShrSet'') p__Inv0)) (Const true))) s))\<or>((formEval (andForm (andForm (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadVld'')) (Const true)) (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadPtr'')) (Const (index p__Inv0)))) (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HomeHeadPtr'')) (Const false))) s))\<or>((formEval (andForm (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadVld'')) (Const true)))) s))\<or>((formEval (andForm (neg (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''ShrSet'') p__Inv0)) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadVld'')) (Const true)))) s))\<or>((formEval (andForm (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadPtr'')) (Const (index p__Inv0))))) s))\<or>((formEval (andForm (neg (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''ShrSet'') p__Inv0)) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadPtr'')) (Const (index p__Inv0))))) s))\<or>((formEval (andForm (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HomeHeadPtr'')) (Const false)))) s))\<or>((formEval (andForm (neg (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''ShrSet'') p__Inv0)) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HomeHeadPtr'')) (Const false)))) s))" by auto
  moreover {
    assume c1: "((formEval (andForm (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true)) (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''ShrSet'') p__Inv0)) (Const true))) s))"
    have "?P3 s"
    apply (cut_tac a1 a2 b1 c1, simp, rule_tac x="(neg (andForm (eqn (IVar (Field (Field (Ident ''Sta'') ''NakcMsg'') ''Cmd'')) (Const NAKC_Nakc)) (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true))))" in exI, auto) done
    then have "invHoldForRule' s f r (invariants N)" by auto
  }
  moreover {
    assume c1: "((formEval (andForm (andForm (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadVld'')) (Const true)) (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadPtr'')) (Const (index p__Inv0)))) (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HomeHeadPtr'')) (Const false))) s))"
    have "?P1 s"
    proof(cut_tac a1 a2 b1 c1, auto) qed
    then have "invHoldForRule' s f r (invariants N)" by auto
  }
  moreover {
    assume c1: "((formEval (andForm (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadVld'')) (Const true)))) s))"
    have "?P1 s"
    proof(cut_tac a1 a2 b1 c1, auto) qed
    then have "invHoldForRule' s f r (invariants N)" by auto
  }
  moreover {
    assume c1: "((formEval (andForm (neg (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''ShrSet'') p__Inv0)) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadVld'')) (Const true)))) s))"
    have "?P1 s"
    proof(cut_tac a1 a2 b1 c1, auto) qed
    then have "invHoldForRule' s f r (invariants N)" by auto
  }
  moreover {
    assume c1: "((formEval (andForm (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadPtr'')) (Const (index p__Inv0))))) s))"
    have "?P1 s"
    proof(cut_tac a1 a2 b1 c1, auto) qed
    then have "invHoldForRule' s f r (invariants N)" by auto
  }
  moreover {
    assume c1: "((formEval (andForm (neg (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''ShrSet'') p__Inv0)) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadPtr'')) (Const (index p__Inv0))))) s))"
    have "?P1 s"
    proof(cut_tac a1 a2 b1 c1, auto) qed
    then have "invHoldForRule' s f r (invariants N)" by auto
  }
  moreover {
    assume c1: "((formEval (andForm (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HomeHeadPtr'')) (Const false)))) s))"
    have "?P1 s"
    proof(cut_tac a1 a2 b1 c1, auto) qed
    then have "invHoldForRule' s f r (invariants N)" by auto
  }
  moreover {
    assume c1: "((formEval (andForm (neg (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''ShrSet'') p__Inv0)) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HomeHeadPtr'')) (Const false)))) s))"
    have "?P1 s"
    proof(cut_tac a1 a2 b1 c1, auto) qed
    then have "invHoldForRule' s f r (invariants N)" by auto
  }
  ultimately have "invHoldForRule' s f r (invariants N)" by satx
}
ultimately show "invHoldForRule' s f r (invariants N)" by satx
qed

lemma n_NI_Local_GetX_PutX_9__part__0Vsinv__115:
assumes a1: "(\<exists> src. src\<le>N\<and>r=n_NI_Local_GetX_PutX_9__part__0 N src)" and
a2: "(\<exists> p__Inv0. p__Inv0\<le>N\<and>f=inv__115  p__Inv0)"
shows "invHoldForRule' s f r (invariants N)" (is "?P1 s \<or> ?P2 s \<or> ?P3 s")
proof -
from a1 obtain src where a1:"src\<le>N\<and>r=n_NI_Local_GetX_PutX_9__part__0 N src" apply fastforce done
from a2 obtain p__Inv0 where a2:"p__Inv0\<le>N\<and>f=inv__115  p__Inv0" apply fastforce done
have "(src=p__Inv0)\<or>(src~=p__Inv0)" apply (cut_tac a1 a2, auto) done
moreover {
  assume b1: "(src=p__Inv0)"
  have "?P1 s"
  proof(cut_tac a1 a2 b1, auto) qed
  then have "invHoldForRule' s f r (invariants N)" by auto
}
moreover {
  assume b1: "(src~=p__Inv0)"
  have "((formEval (andForm (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true)) (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''ShrSet'') p__Inv0)) (Const true))) s))\<or>((formEval (andForm (andForm (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadVld'')) (Const true)) (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadPtr'')) (Const (index p__Inv0)))) (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HomeHeadPtr'')) (Const false))) s))\<or>((formEval (andForm (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadVld'')) (Const true)))) s))\<or>((formEval (andForm (neg (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''ShrSet'') p__Inv0)) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadVld'')) (Const true)))) s))\<or>((formEval (andForm (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadPtr'')) (Const (index p__Inv0))))) s))\<or>((formEval (andForm (neg (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''ShrSet'') p__Inv0)) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadPtr'')) (Const (index p__Inv0))))) s))\<or>((formEval (andForm (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HomeHeadPtr'')) (Const false)))) s))\<or>((formEval (andForm (neg (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''ShrSet'') p__Inv0)) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HomeHeadPtr'')) (Const false)))) s))" by auto
  moreover {
    assume c1: "((formEval (andForm (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true)) (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''ShrSet'') p__Inv0)) (Const true))) s))"
    have "?P3 s"
    apply (cut_tac a1 a2 b1 c1, simp, rule_tac x="(neg (andForm (eqn (IVar (Field (Field (Ident ''Sta'') ''NakcMsg'') ''Cmd'')) (Const NAKC_Nakc)) (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true))))" in exI, auto) done
    then have "invHoldForRule' s f r (invariants N)" by auto
  }
  moreover {
    assume c1: "((formEval (andForm (andForm (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadVld'')) (Const true)) (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadPtr'')) (Const (index p__Inv0)))) (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HomeHeadPtr'')) (Const false))) s))"
    have "?P1 s"
    proof(cut_tac a1 a2 b1 c1, auto) qed
    then have "invHoldForRule' s f r (invariants N)" by auto
  }
  moreover {
    assume c1: "((formEval (andForm (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadVld'')) (Const true)))) s))"
    have "?P1 s"
    proof(cut_tac a1 a2 b1 c1, auto) qed
    then have "invHoldForRule' s f r (invariants N)" by auto
  }
  moreover {
    assume c1: "((formEval (andForm (neg (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''ShrSet'') p__Inv0)) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadVld'')) (Const true)))) s))"
    have "?P1 s"
    proof(cut_tac a1 a2 b1 c1, auto) qed
    then have "invHoldForRule' s f r (invariants N)" by auto
  }
  moreover {
    assume c1: "((formEval (andForm (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadPtr'')) (Const (index p__Inv0))))) s))"
    have "?P1 s"
    proof(cut_tac a1 a2 b1 c1, auto) qed
    then have "invHoldForRule' s f r (invariants N)" by auto
  }
  moreover {
    assume c1: "((formEval (andForm (neg (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''ShrSet'') p__Inv0)) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadPtr'')) (Const (index p__Inv0))))) s))"
    have "?P1 s"
    proof(cut_tac a1 a2 b1 c1, auto) qed
    then have "invHoldForRule' s f r (invariants N)" by auto
  }
  moreover {
    assume c1: "((formEval (andForm (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HomeHeadPtr'')) (Const false)))) s))"
    have "?P1 s"
    proof(cut_tac a1 a2 b1 c1, auto) qed
    then have "invHoldForRule' s f r (invariants N)" by auto
  }
  moreover {
    assume c1: "((formEval (andForm (neg (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''ShrSet'') p__Inv0)) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HomeHeadPtr'')) (Const false)))) s))"
    have "?P1 s"
    proof(cut_tac a1 a2 b1 c1, auto) qed
    then have "invHoldForRule' s f r (invariants N)" by auto
  }
  ultimately have "invHoldForRule' s f r (invariants N)" by satx
}
ultimately show "invHoldForRule' s f r (invariants N)" by satx
qed

lemma n_NI_Local_GetX_PutX_9__part__1Vsinv__115:
assumes a1: "(\<exists> src. src\<le>N\<and>r=n_NI_Local_GetX_PutX_9__part__1 N src)" and
a2: "(\<exists> p__Inv0. p__Inv0\<le>N\<and>f=inv__115  p__Inv0)"
shows "invHoldForRule' s f r (invariants N)" (is "?P1 s \<or> ?P2 s \<or> ?P3 s")
proof -
from a1 obtain src where a1:"src\<le>N\<and>r=n_NI_Local_GetX_PutX_9__part__1 N src" apply fastforce done
from a2 obtain p__Inv0 where a2:"p__Inv0\<le>N\<and>f=inv__115  p__Inv0" apply fastforce done
have "(src=p__Inv0)\<or>(src~=p__Inv0)" apply (cut_tac a1 a2, auto) done
moreover {
  assume b1: "(src=p__Inv0)"
  have "?P1 s"
  proof(cut_tac a1 a2 b1, auto) qed
  then have "invHoldForRule' s f r (invariants N)" by auto
}
moreover {
  assume b1: "(src~=p__Inv0)"
  have "((formEval (andForm (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true)) (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''ShrSet'') p__Inv0)) (Const true))) s))\<or>((formEval (andForm (andForm (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadVld'')) (Const true)) (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadPtr'')) (Const (index p__Inv0)))) (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HomeHeadPtr'')) (Const false))) s))\<or>((formEval (andForm (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadVld'')) (Const true)))) s))\<or>((formEval (andForm (neg (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''ShrSet'') p__Inv0)) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadVld'')) (Const true)))) s))\<or>((formEval (andForm (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadPtr'')) (Const (index p__Inv0))))) s))\<or>((formEval (andForm (neg (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''ShrSet'') p__Inv0)) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadPtr'')) (Const (index p__Inv0))))) s))\<or>((formEval (andForm (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HomeHeadPtr'')) (Const false)))) s))\<or>((formEval (andForm (neg (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''ShrSet'') p__Inv0)) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HomeHeadPtr'')) (Const false)))) s))" by auto
  moreover {
    assume c1: "((formEval (andForm (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true)) (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''ShrSet'') p__Inv0)) (Const true))) s))"
    have "?P3 s"
    apply (cut_tac a1 a2 b1 c1, simp, rule_tac x="(neg (andForm (eqn (IVar (Field (Field (Ident ''Sta'') ''NakcMsg'') ''Cmd'')) (Const NAKC_Nakc)) (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true))))" in exI, auto) done
    then have "invHoldForRule' s f r (invariants N)" by auto
  }
  moreover {
    assume c1: "((formEval (andForm (andForm (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadVld'')) (Const true)) (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadPtr'')) (Const (index p__Inv0)))) (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HomeHeadPtr'')) (Const false))) s))"
    have "?P3 s"
    apply (cut_tac a1 a2 b1 c1, simp, rule_tac x="(neg (andForm (eqn (IVar (Field (Field (Ident ''Sta'') ''NakcMsg'') ''Cmd'')) (Const NAKC_Nakc)) (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''Pending'')) (Const false))))" in exI, auto) done
    then have "invHoldForRule' s f r (invariants N)" by auto
  }
  moreover {
    assume c1: "((formEval (andForm (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadVld'')) (Const true)))) s))"
    have "?P1 s"
    proof(cut_tac a1 a2 b1 c1, auto) qed
    then have "invHoldForRule' s f r (invariants N)" by auto
  }
  moreover {
    assume c1: "((formEval (andForm (neg (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''ShrSet'') p__Inv0)) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadVld'')) (Const true)))) s))"
    have "?P1 s"
    proof(cut_tac a1 a2 b1 c1, auto) qed
    then have "invHoldForRule' s f r (invariants N)" by auto
  }
  moreover {
    assume c1: "((formEval (andForm (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadPtr'')) (Const (index p__Inv0))))) s))"
    have "?P1 s"
    proof(cut_tac a1 a2 b1 c1, auto) qed
    then have "invHoldForRule' s f r (invariants N)" by auto
  }
  moreover {
    assume c1: "((formEval (andForm (neg (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''ShrSet'') p__Inv0)) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadPtr'')) (Const (index p__Inv0))))) s))"
    have "?P1 s"
    proof(cut_tac a1 a2 b1 c1, auto) qed
    then have "invHoldForRule' s f r (invariants N)" by auto
  }
  moreover {
    assume c1: "((formEval (andForm (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HomeHeadPtr'')) (Const false)))) s))"
    have "?P1 s"
    proof(cut_tac a1 a2 b1 c1, auto) qed
    then have "invHoldForRule' s f r (invariants N)" by auto
  }
  moreover {
    assume c1: "((formEval (andForm (neg (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''ShrSet'') p__Inv0)) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HomeHeadPtr'')) (Const false)))) s))"
    have "?P1 s"
    proof(cut_tac a1 a2 b1 c1, auto) qed
    then have "invHoldForRule' s f r (invariants N)" by auto
  }
  ultimately have "invHoldForRule' s f r (invariants N)" by satx
}
ultimately show "invHoldForRule' s f r (invariants N)" by satx
qed

lemma n_NI_Local_GetX_PutX_10_HomeVsinv__115:
assumes a1: "(\<exists> src. src\<le>N\<and>r=n_NI_Local_GetX_PutX_10_Home N src)" and
a2: "(\<exists> p__Inv0. p__Inv0\<le>N\<and>f=inv__115  p__Inv0)"
shows "invHoldForRule' s f r (invariants N)" (is "?P1 s \<or> ?P2 s \<or> ?P3 s")
proof -
from a1 obtain src where a1:"src\<le>N\<and>r=n_NI_Local_GetX_PutX_10_Home N src" apply fastforce done
from a2 obtain p__Inv0 where a2:"p__Inv0\<le>N\<and>f=inv__115  p__Inv0" apply fastforce done
have "(src=p__Inv0)\<or>(src~=p__Inv0)" apply (cut_tac a1 a2, auto) done
moreover {
  assume b1: "(src=p__Inv0)"
  have "?P1 s"
  proof(cut_tac a1 a2 b1, auto) qed
  then have "invHoldForRule' s f r (invariants N)" by auto
}
moreover {
  assume b1: "(src~=p__Inv0)"
  have "((formEval (andForm (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true)) (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''ShrSet'') p__Inv0)) (Const true))) s))\<or>((formEval (andForm (andForm (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadVld'')) (Const true)) (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadPtr'')) (Const (index p__Inv0)))) (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HomeHeadPtr'')) (Const false))) s))\<or>((formEval (andForm (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadVld'')) (Const true)))) s))\<or>((formEval (andForm (neg (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''ShrSet'') p__Inv0)) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadVld'')) (Const true)))) s))\<or>((formEval (andForm (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadPtr'')) (Const (index p__Inv0))))) s))\<or>((formEval (andForm (neg (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''ShrSet'') p__Inv0)) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadPtr'')) (Const (index p__Inv0))))) s))\<or>((formEval (andForm (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HomeHeadPtr'')) (Const false)))) s))\<or>((formEval (andForm (neg (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''ShrSet'') p__Inv0)) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HomeHeadPtr'')) (Const false)))) s))" by auto
  moreover {
    assume c1: "((formEval (andForm (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true)) (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''ShrSet'') p__Inv0)) (Const true))) s))"
    have "?P3 s"
    apply (cut_tac a1 a2 b1 c1, simp, rule_tac x="(neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HomeShrSet'')) (Const true)))" in exI, auto) done
    then have "invHoldForRule' s f r (invariants N)" by auto
  }
  moreover {
    assume c1: "((formEval (andForm (andForm (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadVld'')) (Const true)) (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadPtr'')) (Const (index p__Inv0)))) (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HomeHeadPtr'')) (Const false))) s))"
    have "?P1 s"
    proof(cut_tac a1 a2 b1 c1, auto) qed
    then have "invHoldForRule' s f r (invariants N)" by auto
  }
  moreover {
    assume c1: "((formEval (andForm (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadVld'')) (Const true)))) s))"
    have "?P1 s"
    proof(cut_tac a1 a2 b1 c1, auto) qed
    then have "invHoldForRule' s f r (invariants N)" by auto
  }
  moreover {
    assume c1: "((formEval (andForm (neg (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''ShrSet'') p__Inv0)) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadVld'')) (Const true)))) s))"
    have "?P1 s"
    proof(cut_tac a1 a2 b1 c1, auto) qed
    then have "invHoldForRule' s f r (invariants N)" by auto
  }
  moreover {
    assume c1: "((formEval (andForm (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadPtr'')) (Const (index p__Inv0))))) s))"
    have "?P1 s"
    proof(cut_tac a1 a2 b1 c1, auto) qed
    then have "invHoldForRule' s f r (invariants N)" by auto
  }
  moreover {
    assume c1: "((formEval (andForm (neg (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''ShrSet'') p__Inv0)) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadPtr'')) (Const (index p__Inv0))))) s))"
    have "?P1 s"
    proof(cut_tac a1 a2 b1 c1, auto) qed
    then have "invHoldForRule' s f r (invariants N)" by auto
  }
  moreover {
    assume c1: "((formEval (andForm (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HomeHeadPtr'')) (Const false)))) s))"
    have "?P1 s"
    proof(cut_tac a1 a2 b1 c1, auto) qed
    then have "invHoldForRule' s f r (invariants N)" by auto
  }
  moreover {
    assume c1: "((formEval (andForm (neg (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''ShrSet'') p__Inv0)) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HomeHeadPtr'')) (Const false)))) s))"
    have "?P1 s"
    proof(cut_tac a1 a2 b1 c1, auto) qed
    then have "invHoldForRule' s f r (invariants N)" by auto
  }
  ultimately have "invHoldForRule' s f r (invariants N)" by satx
}
ultimately show "invHoldForRule' s f r (invariants N)" by satx
qed

lemma n_NI_Local_GetX_PutX_10Vsinv__115:
assumes a1: "(\<exists> src pp. src\<le>N\<and>pp\<le>N\<and>src~=pp\<and>r=n_NI_Local_GetX_PutX_10 N src pp)" and
a2: "(\<exists> p__Inv0. p__Inv0\<le>N\<and>f=inv__115  p__Inv0)"
shows "invHoldForRule' s f r (invariants N)" (is "?P1 s \<or> ?P2 s \<or> ?P3 s")
proof -
from a1 obtain src pp where a1:"src\<le>N\<and>pp\<le>N\<and>src~=pp\<and>r=n_NI_Local_GetX_PutX_10 N src pp" apply fastforce done
from a2 obtain p__Inv0 where a2:"p__Inv0\<le>N\<and>f=inv__115  p__Inv0" apply fastforce done
have "(src=p__Inv0\<and>pp~=p__Inv0)\<or>(src~=p__Inv0\<and>pp=p__Inv0)\<or>(src~=p__Inv0\<and>pp~=p__Inv0)" apply (cut_tac a1 a2, auto) done
moreover {
  assume b1: "(src=p__Inv0\<and>pp~=p__Inv0)"
  have "?P1 s"
  proof(cut_tac a1 a2 b1, auto) qed
  then have "invHoldForRule' s f r (invariants N)" by auto
}
moreover {
  assume b1: "(src~=p__Inv0\<and>pp=p__Inv0)"
  have "((formEval (andForm (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true)) (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''ShrSet'') p__Inv0)) (Const true))) s))\<or>((formEval (andForm (andForm (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadVld'')) (Const true)) (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadPtr'')) (Const (index p__Inv0)))) (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HomeHeadPtr'')) (Const false))) s))\<or>((formEval (andForm (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadVld'')) (Const true)))) s))\<or>((formEval (andForm (neg (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''ShrSet'') p__Inv0)) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadVld'')) (Const true)))) s))\<or>((formEval (andForm (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadPtr'')) (Const (index p__Inv0))))) s))\<or>((formEval (andForm (neg (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''ShrSet'') p__Inv0)) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadPtr'')) (Const (index p__Inv0))))) s))\<or>((formEval (andForm (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HomeHeadPtr'')) (Const false)))) s))\<or>((formEval (andForm (neg (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''ShrSet'') p__Inv0)) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HomeHeadPtr'')) (Const false)))) s))" by auto
  moreover {
    assume c1: "((formEval (andForm (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true)) (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''ShrSet'') p__Inv0)) (Const true))) s))"
    have "?P3 s"
    apply (cut_tac a1 a2 b1 c1, simp, rule_tac x="(neg (andForm (eqn (IVar (Field (Field (Ident ''Sta'') ''NakcMsg'') ''Cmd'')) (Const NAKC_Nakc)) (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true))))" in exI, auto) done
    then have "invHoldForRule' s f r (invariants N)" by auto
  }
  moreover {
    assume c1: "((formEval (andForm (andForm (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadVld'')) (Const true)) (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadPtr'')) (Const (index p__Inv0)))) (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HomeHeadPtr'')) (Const false))) s))"
    have "?P1 s"
    proof(cut_tac a1 a2 b1 c1, auto) qed
    then have "invHoldForRule' s f r (invariants N)" by auto
  }
  moreover {
    assume c1: "((formEval (andForm (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadVld'')) (Const true)))) s))"
    have "?P1 s"
    proof(cut_tac a1 a2 b1 c1, auto) qed
    then have "invHoldForRule' s f r (invariants N)" by auto
  }
  moreover {
    assume c1: "((formEval (andForm (neg (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''ShrSet'') p__Inv0)) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadVld'')) (Const true)))) s))"
    have "?P1 s"
    proof(cut_tac a1 a2 b1 c1, auto) qed
    then have "invHoldForRule' s f r (invariants N)" by auto
  }
  moreover {
    assume c1: "((formEval (andForm (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadPtr'')) (Const (index p__Inv0))))) s))"
    have "?P1 s"
    proof(cut_tac a1 a2 b1 c1, auto) qed
    then have "invHoldForRule' s f r (invariants N)" by auto
  }
  moreover {
    assume c1: "((formEval (andForm (neg (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''ShrSet'') p__Inv0)) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadPtr'')) (Const (index p__Inv0))))) s))"
    have "?P1 s"
    proof(cut_tac a1 a2 b1 c1, auto) qed
    then have "invHoldForRule' s f r (invariants N)" by auto
  }
  moreover {
    assume c1: "((formEval (andForm (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HomeHeadPtr'')) (Const false)))) s))"
    have "?P1 s"
    proof(cut_tac a1 a2 b1 c1, auto) qed
    then have "invHoldForRule' s f r (invariants N)" by auto
  }
  moreover {
    assume c1: "((formEval (andForm (neg (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''ShrSet'') p__Inv0)) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HomeHeadPtr'')) (Const false)))) s))"
    have "?P1 s"
    proof(cut_tac a1 a2 b1 c1, auto) qed
    then have "invHoldForRule' s f r (invariants N)" by auto
  }
  ultimately have "invHoldForRule' s f r (invariants N)" by satx
}
moreover {
  assume b1: "(src~=p__Inv0\<and>pp~=p__Inv0)"
  have "((formEval (andForm (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true)) (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''ShrSet'') p__Inv0)) (Const true))) s))\<or>((formEval (andForm (andForm (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadVld'')) (Const true)) (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadPtr'')) (Const (index p__Inv0)))) (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HomeHeadPtr'')) (Const false))) s))\<or>((formEval (andForm (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadVld'')) (Const true)))) s))\<or>((formEval (andForm (neg (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''ShrSet'') p__Inv0)) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadVld'')) (Const true)))) s))\<or>((formEval (andForm (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadPtr'')) (Const (index p__Inv0))))) s))\<or>((formEval (andForm (neg (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''ShrSet'') p__Inv0)) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadPtr'')) (Const (index p__Inv0))))) s))\<or>((formEval (andForm (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HomeHeadPtr'')) (Const false)))) s))\<or>((formEval (andForm (neg (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''ShrSet'') p__Inv0)) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HomeHeadPtr'')) (Const false)))) s))" by auto
  moreover {
    assume c1: "((formEval (andForm (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true)) (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''ShrSet'') p__Inv0)) (Const true))) s))"
    have "?P3 s"
    apply (cut_tac a1 a2 b1 c1, simp, rule_tac x="(neg (andForm (eqn (IVar (Field (Field (Ident ''Sta'') ''NakcMsg'') ''Cmd'')) (Const NAKC_Nakc)) (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true))))" in exI, auto) done
    then have "invHoldForRule' s f r (invariants N)" by auto
  }
  moreover {
    assume c1: "((formEval (andForm (andForm (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadVld'')) (Const true)) (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadPtr'')) (Const (index p__Inv0)))) (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HomeHeadPtr'')) (Const false))) s))"
    have "?P1 s"
    proof(cut_tac a1 a2 b1 c1, auto) qed
    then have "invHoldForRule' s f r (invariants N)" by auto
  }
  moreover {
    assume c1: "((formEval (andForm (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadVld'')) (Const true)))) s))"
    have "?P1 s"
    proof(cut_tac a1 a2 b1 c1, auto) qed
    then have "invHoldForRule' s f r (invariants N)" by auto
  }
  moreover {
    assume c1: "((formEval (andForm (neg (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''ShrSet'') p__Inv0)) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadVld'')) (Const true)))) s))"
    have "?P1 s"
    proof(cut_tac a1 a2 b1 c1, auto) qed
    then have "invHoldForRule' s f r (invariants N)" by auto
  }
  moreover {
    assume c1: "((formEval (andForm (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadPtr'')) (Const (index p__Inv0))))) s))"
    have "?P1 s"
    proof(cut_tac a1 a2 b1 c1, auto) qed
    then have "invHoldForRule' s f r (invariants N)" by auto
  }
  moreover {
    assume c1: "((formEval (andForm (neg (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''ShrSet'') p__Inv0)) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadPtr'')) (Const (index p__Inv0))))) s))"
    have "?P1 s"
    proof(cut_tac a1 a2 b1 c1, auto) qed
    then have "invHoldForRule' s f r (invariants N)" by auto
  }
  moreover {
    assume c1: "((formEval (andForm (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HomeHeadPtr'')) (Const false)))) s))"
    have "?P1 s"
    proof(cut_tac a1 a2 b1 c1, auto) qed
    then have "invHoldForRule' s f r (invariants N)" by auto
  }
  moreover {
    assume c1: "((formEval (andForm (neg (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''ShrSet'') p__Inv0)) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HomeHeadPtr'')) (Const false)))) s))"
    have "?P1 s"
    proof(cut_tac a1 a2 b1 c1, auto) qed
    then have "invHoldForRule' s f r (invariants N)" by auto
  }
  ultimately have "invHoldForRule' s f r (invariants N)" by satx
}
ultimately show "invHoldForRule' s f r (invariants N)" by satx
qed

lemma n_NI_Local_GetX_PutX_11Vsinv__115:
assumes a1: "(\<exists> src. src\<le>N\<and>r=n_NI_Local_GetX_PutX_11 N src)" and
a2: "(\<exists> p__Inv0. p__Inv0\<le>N\<and>f=inv__115  p__Inv0)"
shows "invHoldForRule' s f r (invariants N)" (is "?P1 s \<or> ?P2 s \<or> ?P3 s")
proof -
from a1 obtain src where a1:"src\<le>N\<and>r=n_NI_Local_GetX_PutX_11 N src" apply fastforce done
from a2 obtain p__Inv0 where a2:"p__Inv0\<le>N\<and>f=inv__115  p__Inv0" apply fastforce done
have "(src=p__Inv0)\<or>(src~=p__Inv0)" apply (cut_tac a1 a2, auto) done
moreover {
  assume b1: "(src=p__Inv0)"
  have "?P1 s"
  proof(cut_tac a1 a2 b1, auto) qed
  then have "invHoldForRule' s f r (invariants N)" by auto
}
moreover {
  assume b1: "(src~=p__Inv0)"
  have "?P1 s"
  proof(cut_tac a1 a2 b1, auto) qed
  then have "invHoldForRule' s f r (invariants N)" by auto
}
ultimately show "invHoldForRule' s f r (invariants N)" by satx
qed

lemma n_NI_Remote_GetX_NakVsinv__115:
assumes a1: "(\<exists> src dst. src\<le>N\<and>dst\<le>N\<and>src~=dst\<and>r=n_NI_Remote_GetX_Nak  src dst)" and
a2: "(\<exists> p__Inv0. p__Inv0\<le>N\<and>f=inv__115  p__Inv0)"
shows "invHoldForRule' s f r (invariants N)" (is "?P1 s \<or> ?P2 s \<or> ?P3 s")
proof -
from a1 obtain src dst where a1:"src\<le>N\<and>dst\<le>N\<and>src~=dst\<and>r=n_NI_Remote_GetX_Nak  src dst" apply fastforce done
from a2 obtain p__Inv0 where a2:"p__Inv0\<le>N\<and>f=inv__115  p__Inv0" apply fastforce done
have "(src=p__Inv0\<and>dst~=p__Inv0)\<or>(src~=p__Inv0\<and>dst=p__Inv0)\<or>(src~=p__Inv0\<and>dst~=p__Inv0)" apply (cut_tac a1 a2, auto) done
moreover {
  assume b1: "(src=p__Inv0\<and>dst~=p__Inv0)"
  have "?P3 s"
  apply (cut_tac a1 a2 b1, simp, rule_tac x="(neg (andForm (andForm (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''InvSet'') p__Inv0)) (Const true)) (eqn (IVar (Field (Para (Field (Ident ''Sta'') ''UniMsg'') p__Inv0) ''Cmd'')) (Const UNI_GetX))) (eqn (IVar (Field (Para (Field (Ident ''Sta'') ''UniMsg'') p__Inv0) ''HomeProc'')) (Const false))))" in exI, auto) done
  then have "invHoldForRule' s f r (invariants N)" by auto
}
moreover {
  assume b1: "(src~=p__Inv0\<and>dst=p__Inv0)"
  have "?P3 s"
  apply (cut_tac a1 a2 b1, simp, rule_tac x="(neg (andForm (andForm (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''InvSet'') p__Inv0)) (Const true)) (eqn (IVar (Field (Para (Field (Ident ''Sta'') ''UniMsg'') src) ''Cmd'')) (Const UNI_GetX))) (eqn (IVar (Field (Para (Field (Ident ''Sta'') ''UniMsg'') src) ''HomeProc'')) (Const false))))" in exI, auto) done
  then have "invHoldForRule' s f r (invariants N)" by auto
}
moreover {
  assume b1: "(src~=p__Inv0\<and>dst~=p__Inv0)"
  have "?P3 s"
  apply (cut_tac a1 a2 b1, simp, rule_tac x="(neg (andForm (andForm (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''InvSet'') p__Inv0)) (Const true)) (eqn (IVar (Field (Para (Field (Ident ''Sta'') ''UniMsg'') src) ''Cmd'')) (Const UNI_GetX))) (eqn (IVar (Field (Para (Field (Ident ''Sta'') ''UniMsg'') src) ''HomeProc'')) (Const false))))" in exI, auto) done
  then have "invHoldForRule' s f r (invariants N)" by auto
}
ultimately show "invHoldForRule' s f r (invariants N)" by satx
qed

lemma n_NI_Remote_GetX_Nak_HomeVsinv__115:
assumes a1: "(\<exists> dst. dst\<le>N\<and>r=n_NI_Remote_GetX_Nak_Home  dst)" and
a2: "(\<exists> p__Inv0. p__Inv0\<le>N\<and>f=inv__115  p__Inv0)"
shows "invHoldForRule' s f r (invariants N)" (is "?P1 s \<or> ?P2 s \<or> ?P3 s")
proof -
from a1 obtain dst where a1:"dst\<le>N\<and>r=n_NI_Remote_GetX_Nak_Home  dst" apply fastforce done
from a2 obtain p__Inv0 where a2:"p__Inv0\<le>N\<and>f=inv__115  p__Inv0" apply fastforce done
have "(dst=p__Inv0)\<or>(dst~=p__Inv0)" apply (cut_tac a1 a2, auto) done
moreover {
  assume b1: "(dst=p__Inv0)"
  have "?P3 s"
  apply (cut_tac a1 a2 b1, simp, rule_tac x="(neg (andForm (eqn (IVar (Field (Field (Ident ''Sta'') ''HomeUniMsg'') ''Cmd'')) (Const UNI_GetX)) (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''InvSet'') p__Inv0)) (Const true))))" in exI, auto) done
  then have "invHoldForRule' s f r (invariants N)" by auto
}
moreover {
  assume b1: "(dst~=p__Inv0)"
  have "?P3 s"
  apply (cut_tac a1 a2 b1, simp, rule_tac x="(neg (andForm (eqn (IVar (Field (Field (Ident ''Sta'') ''HomeUniMsg'') ''Cmd'')) (Const UNI_GetX)) (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''InvSet'') p__Inv0)) (Const true))))" in exI, auto) done
  then have "invHoldForRule' s f r (invariants N)" by auto
}
ultimately show "invHoldForRule' s f r (invariants N)" by satx
qed

lemma n_NI_InvAck_exists_HomeVsinv__115:
assumes a1: "(\<exists> src. src\<le>N\<and>r=n_NI_InvAck_exists_Home  src)" and
a2: "(\<exists> p__Inv0. p__Inv0\<le>N\<and>f=inv__115  p__Inv0)"
shows "invHoldForRule' s f r (invariants N)" (is "?P1 s \<or> ?P2 s \<or> ?P3 s")
proof -
from a1 obtain src where a1:"src\<le>N\<and>r=n_NI_InvAck_exists_Home  src" apply fastforce done
from a2 obtain p__Inv0 where a2:"p__Inv0\<le>N\<and>f=inv__115  p__Inv0" apply fastforce done
have "(src=p__Inv0)\<or>(src~=p__Inv0)" apply (cut_tac a1 a2, auto) done
moreover {
  assume b1: "(src=p__Inv0)"
  have "?P1 s"
  proof(cut_tac a1 a2 b1, auto) qed
  then have "invHoldForRule' s f r (invariants N)" by auto
}
moreover {
  assume b1: "(src~=p__Inv0)"
  have "?P2 s"
  proof(cut_tac a1 a2 b1, auto) qed
  then have "invHoldForRule' s f r (invariants N)" by auto
}
ultimately show "invHoldForRule' s f r (invariants N)" by satx
qed

lemma n_NI_InvAck_existsVsinv__115:
assumes a1: "(\<exists> src pp. src\<le>N\<and>pp\<le>N\<and>src~=pp\<and>r=n_NI_InvAck_exists  src pp)" and
a2: "(\<exists> p__Inv0. p__Inv0\<le>N\<and>f=inv__115  p__Inv0)"
shows "invHoldForRule' s f r (invariants N)" (is "?P1 s \<or> ?P2 s \<or> ?P3 s")
proof -
from a1 obtain src pp where a1:"src\<le>N\<and>pp\<le>N\<and>src~=pp\<and>r=n_NI_InvAck_exists  src pp" apply fastforce done
from a2 obtain p__Inv0 where a2:"p__Inv0\<le>N\<and>f=inv__115  p__Inv0" apply fastforce done
have "(src=p__Inv0\<and>pp~=p__Inv0)\<or>(src~=p__Inv0\<and>pp=p__Inv0)\<or>(src~=p__Inv0\<and>pp~=p__Inv0)" apply (cut_tac a1 a2, auto) done
moreover {
  assume b1: "(src=p__Inv0\<and>pp~=p__Inv0)"
  have "?P1 s"
  proof(cut_tac a1 a2 b1, auto) qed
  then have "invHoldForRule' s f r (invariants N)" by auto
}
moreover {
  assume b1: "(src~=p__Inv0\<and>pp=p__Inv0)"
  have "?P2 s"
  proof(cut_tac a1 a2 b1, auto) qed
  then have "invHoldForRule' s f r (invariants N)" by auto
}
moreover {
  assume b1: "(src~=p__Inv0\<and>pp~=p__Inv0)"
  have "?P2 s"
  proof(cut_tac a1 a2 b1, auto) qed
  then have "invHoldForRule' s f r (invariants N)" by auto
}
ultimately show "invHoldForRule' s f r (invariants N)" by satx
qed

lemma n_NI_InvAck_1Vsinv__115:
assumes a1: "(\<exists> src. src\<le>N\<and>r=n_NI_InvAck_1 N src)" and
a2: "(\<exists> p__Inv0. p__Inv0\<le>N\<and>f=inv__115  p__Inv0)"
shows "invHoldForRule' s f r (invariants N)" (is "?P1 s \<or> ?P2 s \<or> ?P3 s")
proof -
from a1 obtain src where a1:"src\<le>N\<and>r=n_NI_InvAck_1 N src" apply fastforce done
from a2 obtain p__Inv0 where a2:"p__Inv0\<le>N\<and>f=inv__115  p__Inv0" apply fastforce done
have "(src=p__Inv0)\<or>(src~=p__Inv0)" apply (cut_tac a1 a2, auto) done
moreover {
  assume b1: "(src=p__Inv0)"
  have "?P1 s"
  proof(cut_tac a1 a2 b1, auto) qed
  then have "invHoldForRule' s f r (invariants N)" by auto
}
moreover {
  assume b1: "(src~=p__Inv0)"
  have "?P2 s"
  proof(cut_tac a1 a2 b1, auto) qed
  then have "invHoldForRule' s f r (invariants N)" by auto
}
ultimately show "invHoldForRule' s f r (invariants N)" by satx
qed

lemma n_NI_InvAck_2Vsinv__115:
assumes a1: "(\<exists> src. src\<le>N\<and>r=n_NI_InvAck_2 N src)" and
a2: "(\<exists> p__Inv0. p__Inv0\<le>N\<and>f=inv__115  p__Inv0)"
shows "invHoldForRule' s f r (invariants N)" (is "?P1 s \<or> ?P2 s \<or> ?P3 s")
proof -
from a1 obtain src where a1:"src\<le>N\<and>r=n_NI_InvAck_2 N src" apply fastforce done
from a2 obtain p__Inv0 where a2:"p__Inv0\<le>N\<and>f=inv__115  p__Inv0" apply fastforce done
have "(src=p__Inv0)\<or>(src~=p__Inv0)" apply (cut_tac a1 a2, auto) done
moreover {
  assume b1: "(src=p__Inv0)"
  have "?P1 s"
  proof(cut_tac a1 a2 b1, auto) qed
  then have "invHoldForRule' s f r (invariants N)" by auto
}
moreover {
  assume b1: "(src~=p__Inv0)"
  have "?P2 s"
  proof(cut_tac a1 a2 b1, auto) qed
  then have "invHoldForRule' s f r (invariants N)" by auto
}
ultimately show "invHoldForRule' s f r (invariants N)" by satx
qed

lemma n_NI_InvAck_3Vsinv__115:
assumes a1: "(\<exists> src. src\<le>N\<and>r=n_NI_InvAck_3 N src)" and
a2: "(\<exists> p__Inv0. p__Inv0\<le>N\<and>f=inv__115  p__Inv0)"
shows "invHoldForRule' s f r (invariants N)" (is "?P1 s \<or> ?P2 s \<or> ?P3 s")
proof -
from a1 obtain src where a1:"src\<le>N\<and>r=n_NI_InvAck_3 N src" apply fastforce done
from a2 obtain p__Inv0 where a2:"p__Inv0\<le>N\<and>f=inv__115  p__Inv0" apply fastforce done
have "(src=p__Inv0)\<or>(src~=p__Inv0)" apply (cut_tac a1 a2, auto) done
moreover {
  assume b1: "(src=p__Inv0)"
  have "?P1 s"
  proof(cut_tac a1 a2 b1, auto) qed
  then have "invHoldForRule' s f r (invariants N)" by auto
}
moreover {
  assume b1: "(src~=p__Inv0)"
  have "?P2 s"
  proof(cut_tac a1 a2 b1, auto) qed
  then have "invHoldForRule' s f r (invariants N)" by auto
}
ultimately show "invHoldForRule' s f r (invariants N)" by satx
qed

lemma n_NI_ReplaceVsinv__115:
assumes a1: "(\<exists> src. src\<le>N\<and>r=n_NI_Replace  src)" and
a2: "(\<exists> p__Inv0. p__Inv0\<le>N\<and>f=inv__115  p__Inv0)"
shows "invHoldForRule' s f r (invariants N)" (is "?P1 s \<or> ?P2 s \<or> ?P3 s")
proof -
from a1 obtain src where a1:"src\<le>N\<and>r=n_NI_Replace  src" apply fastforce done
from a2 obtain p__Inv0 where a2:"p__Inv0\<le>N\<and>f=inv__115  p__Inv0" apply fastforce done
have "(src=p__Inv0)\<or>(src~=p__Inv0)" apply (cut_tac a1 a2, auto) done
moreover {
  assume b1: "(src=p__Inv0)"
  have "((formEval (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true)) s))\<or>((formEval (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true))) s))" by auto
  moreover {
    assume c1: "((formEval (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true)) s))"
    have "?P1 s"
    proof(cut_tac a1 a2 b1 c1, auto) qed
    then have "invHoldForRule' s f r (invariants N)" by auto
  }
  moreover {
    assume c1: "((formEval (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true))) s))"
    have "?P2 s"
    proof(cut_tac a1 a2 b1 c1, auto) qed
    then have "invHoldForRule' s f r (invariants N)" by auto
  }
  ultimately have "invHoldForRule' s f r (invariants N)" by satx
}
moreover {
  assume b1: "(src~=p__Inv0)"
  have "?P2 s"
  proof(cut_tac a1 a2 b1, auto) qed
  then have "invHoldForRule' s f r (invariants N)" by auto
}
ultimately show "invHoldForRule' s f r (invariants N)" by satx
qed

lemma n_PI_Local_GetX_PutX_HeadVld__part__0Vsinv__115:
assumes a1: "(r=n_PI_Local_GetX_PutX_HeadVld__part__0 N )" and
a2: "(\<exists> p__Inv0. p__Inv0\<le>N\<and>f=inv__115  p__Inv0)"
shows "invHoldForRule' s f r (invariants N)" (is "?P1 s \<or> ?P2 s \<or> ?P3 s")
proof -
from a2 obtain p__Inv0 where a2:"p__Inv0\<le>N\<and>f=inv__115  p__Inv0" apply fastforce done
have "((formEval (andForm (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true)) (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''ShrSet'') p__Inv0)) (Const true))) s))\<or>((formEval (andForm (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadPtr'')) (Const (index p__Inv0))) (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HomeHeadPtr'')) (Const false))) s))\<or>((formEval (andForm (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadPtr'')) (Const (index p__Inv0))))) s))\<or>((formEval (andForm (neg (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''ShrSet'') p__Inv0)) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadPtr'')) (Const (index p__Inv0))))) s))\<or>((formEval (andForm (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HomeHeadPtr'')) (Const false)))) s))\<or>((formEval (andForm (neg (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''ShrSet'') p__Inv0)) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HomeHeadPtr'')) (Const false)))) s))" by auto
  moreover {
    assume c1: "((formEval (andForm (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true)) (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''ShrSet'') p__Inv0)) (Const true))) s))"
    have "?P3 s"
    apply (cut_tac a1 a2  c1, simp, rule_tac x="(neg (andForm (eqn (IVar (Field (Field (Ident ''Sta'') ''NakcMsg'') ''Cmd'')) (Const NAKC_Nakc)) (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true))))" in exI, auto) done
    then have "invHoldForRule' s f r (invariants N)" by auto
  }
  moreover {
    assume c1: "((formEval (andForm (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadPtr'')) (Const (index p__Inv0))) (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HomeHeadPtr'')) (Const false))) s))"
    have "?P3 s"
    apply (cut_tac a1 a2  c1, simp, rule_tac x="(neg (andForm (eqn (IVar (Field (Field (Ident ''Sta'') ''NakcMsg'') ''Cmd'')) (Const NAKC_Nakc)) (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''Pending'')) (Const false))))" in exI, auto) done
    then have "invHoldForRule' s f r (invariants N)" by auto
  }
  moreover {
    assume c1: "((formEval (andForm (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadPtr'')) (Const (index p__Inv0))))) s))"
    have "?P1 s"
    proof(cut_tac a1 a2  c1, auto) qed
    then have "invHoldForRule' s f r (invariants N)" by auto
  }
  moreover {
    assume c1: "((formEval (andForm (neg (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''ShrSet'') p__Inv0)) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadPtr'')) (Const (index p__Inv0))))) s))"
    have "?P1 s"
    proof(cut_tac a1 a2  c1, auto) qed
    then have "invHoldForRule' s f r (invariants N)" by auto
  }
  moreover {
    assume c1: "((formEval (andForm (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HomeHeadPtr'')) (Const false)))) s))"
    have "?P1 s"
    proof(cut_tac a1 a2  c1, auto) qed
    then have "invHoldForRule' s f r (invariants N)" by auto
  }
  moreover {
    assume c1: "((formEval (andForm (neg (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''ShrSet'') p__Inv0)) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HomeHeadPtr'')) (Const false)))) s))"
    have "?P1 s"
    proof(cut_tac a1 a2  c1, auto) qed
    then have "invHoldForRule' s f r (invariants N)" by auto
  }
ultimately show "invHoldForRule' s f r (invariants N)" by satx
qed

lemma n_PI_Local_GetX_PutX_HeadVld__part__1Vsinv__115:
assumes a1: "(r=n_PI_Local_GetX_PutX_HeadVld__part__1 N )" and
a2: "(\<exists> p__Inv0. p__Inv0\<le>N\<and>f=inv__115  p__Inv0)"
shows "invHoldForRule' s f r (invariants N)" (is "?P1 s \<or> ?P2 s \<or> ?P3 s")
proof -
from a2 obtain p__Inv0 where a2:"p__Inv0\<le>N\<and>f=inv__115  p__Inv0" apply fastforce done
have "((formEval (andForm (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true)) (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''ShrSet'') p__Inv0)) (Const true))) s))\<or>((formEval (andForm (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadPtr'')) (Const (index p__Inv0))) (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HomeHeadPtr'')) (Const false))) s))\<or>((formEval (andForm (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadPtr'')) (Const (index p__Inv0))))) s))\<or>((formEval (andForm (neg (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''ShrSet'') p__Inv0)) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadPtr'')) (Const (index p__Inv0))))) s))\<or>((formEval (andForm (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HomeHeadPtr'')) (Const false)))) s))\<or>((formEval (andForm (neg (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''ShrSet'') p__Inv0)) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HomeHeadPtr'')) (Const false)))) s))" by auto
  moreover {
    assume c1: "((formEval (andForm (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true)) (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''ShrSet'') p__Inv0)) (Const true))) s))"
    have "?P3 s"
    apply (cut_tac a1 a2  c1, simp, rule_tac x="(neg (andForm (eqn (IVar (Field (Field (Ident ''Sta'') ''NakcMsg'') ''Cmd'')) (Const NAKC_Nakc)) (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true))))" in exI, auto) done
    then have "invHoldForRule' s f r (invariants N)" by auto
  }
  moreover {
    assume c1: "((formEval (andForm (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadPtr'')) (Const (index p__Inv0))) (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HomeHeadPtr'')) (Const false))) s))"
    have "?P3 s"
    apply (cut_tac a1 a2  c1, simp, rule_tac x="(neg (andForm (eqn (IVar (Field (Field (Ident ''Sta'') ''NakcMsg'') ''Cmd'')) (Const NAKC_Nakc)) (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''Pending'')) (Const false))))" in exI, auto) done
    then have "invHoldForRule' s f r (invariants N)" by auto
  }
  moreover {
    assume c1: "((formEval (andForm (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadPtr'')) (Const (index p__Inv0))))) s))"
    have "?P1 s"
    proof(cut_tac a1 a2  c1, auto) qed
    then have "invHoldForRule' s f r (invariants N)" by auto
  }
  moreover {
    assume c1: "((formEval (andForm (neg (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''ShrSet'') p__Inv0)) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HeadPtr'')) (Const (index p__Inv0))))) s))"
    have "?P1 s"
    proof(cut_tac a1 a2  c1, auto) qed
    then have "invHoldForRule' s f r (invariants N)" by auto
  }
  moreover {
    assume c1: "((formEval (andForm (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''ShrVld'')) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HomeHeadPtr'')) (Const false)))) s))"
    have "?P1 s"
    proof(cut_tac a1 a2  c1, auto) qed
    then have "invHoldForRule' s f r (invariants N)" by auto
  }
  moreover {
    assume c1: "((formEval (andForm (neg (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''ShrSet'') p__Inv0)) (Const true))) (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''Dir'') ''HomeHeadPtr'')) (Const false)))) s))"
    have "?P1 s"
    proof(cut_tac a1 a2  c1, auto) qed
    then have "invHoldForRule' s f r (invariants N)" by auto
  }
ultimately show "invHoldForRule' s f r (invariants N)" by satx
qed

lemma n_NI_Nak_ClearVsinv__115:
assumes a1: "(r=n_NI_Nak_Clear  )" and
a2: "(\<exists> p__Inv0. p__Inv0\<le>N\<and>f=inv__115  p__Inv0)"
shows "invHoldForRule' s f r (invariants N)" (is "?P1 s \<or> ?P2 s \<or> ?P3 s")
proof -
from a2 obtain p__Inv0 where a2:"p__Inv0\<le>N\<and>f=inv__115  p__Inv0" apply fastforce done
  have "?P1 s"
  proof(cut_tac a1 a2 , auto) qed
  then show "invHoldForRule' s f r (invariants N)" by auto
qed

lemma n_NI_ShWbVsinv__115:
assumes a1: "(r=n_NI_ShWb N )" and
a2: "(\<exists> p__Inv0. p__Inv0\<le>N\<and>f=inv__115  p__Inv0)"
shows "invHoldForRule' s f r (invariants N)" (is "?P1 s \<or> ?P2 s \<or> ?P3 s")
proof -
from a2 obtain p__Inv0 where a2:"p__Inv0\<le>N\<and>f=inv__115  p__Inv0" apply fastforce done
have "((formEval (andForm (eqn (Const (index p__Inv0)) (IVar (Field (Field (Ident ''Sta'') ''ShWbMsg'') ''Proc''))) (eqn (IVar (Field (Field (Ident ''Sta'') ''ShWbMsg'') ''HomeProc'')) (Const false))) s))\<or>((formEval (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''ShrSet'') p__Inv0)) (Const true)) s))\<or>((formEval (andForm (neg (eqn (Const (index p__Inv0)) (IVar (Field (Field (Ident ''Sta'') ''ShWbMsg'') ''Proc'')))) (neg (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''ShrSet'') p__Inv0)) (Const true)))) s))\<or>((formEval (andForm (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''ShWbMsg'') ''HomeProc'')) (Const false))) (neg (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''ShrSet'') p__Inv0)) (Const true)))) s))" by auto
  moreover {
    assume c1: "((formEval (andForm (eqn (Const (index p__Inv0)) (IVar (Field (Field (Ident ''Sta'') ''ShWbMsg'') ''Proc''))) (eqn (IVar (Field (Field (Ident ''Sta'') ''ShWbMsg'') ''HomeProc'')) (Const false))) s))"
    have "?P3 s"
    apply (cut_tac a1 a2  c1, simp, rule_tac x="(neg (andForm (eqn (IVar (Field (Field (Ident ''Sta'') ''ShWbMsg'') ''Cmd'')) (Const SHWB_ShWb)) (eqn (IVar (Field (Field (Ident ''Sta'') ''NakcMsg'') ''Cmd'')) (Const NAKC_Nakc))))" in exI, auto) done
    then have "invHoldForRule' s f r (invariants N)" by auto
  }
  moreover {
    assume c1: "((formEval (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''ShrSet'') p__Inv0)) (Const true)) s))"
    have "?P3 s"
    apply (cut_tac a1 a2  c1, simp, rule_tac x="(neg (andForm (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''ShrSet'') p__Inv0)) (Const true)) (eqn (IVar (Field (Field (Ident ''Sta'') ''NakcMsg'') ''Cmd'')) (Const NAKC_Nakc))))" in exI, auto) done
    then have "invHoldForRule' s f r (invariants N)" by auto
  }
  moreover {
    assume c1: "((formEval (andForm (neg (eqn (Const (index p__Inv0)) (IVar (Field (Field (Ident ''Sta'') ''ShWbMsg'') ''Proc'')))) (neg (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''ShrSet'') p__Inv0)) (Const true)))) s))"
    have "?P1 s"
    proof(cut_tac a1 a2  c1, auto) qed
    then have "invHoldForRule' s f r (invariants N)" by auto
  }
  moreover {
    assume c1: "((formEval (andForm (neg (eqn (IVar (Field (Field (Ident ''Sta'') ''ShWbMsg'') ''HomeProc'')) (Const false))) (neg (eqn (IVar (Para (Field (Field (Ident ''Sta'') ''Dir'') ''ShrSet'') p__Inv0)) (Const true)))) s))"
    have "?P1 s"
    proof(cut_tac a1 a2  c1, auto) qed
    then have "invHoldForRule' s f r (invariants N)" by auto
  }
ultimately show "invHoldForRule' s f r (invariants N)" by satx
qed

lemma n_NI_Local_Get_Get__part__1Vsinv__115:
  assumes a1: "\<exists> src. src\<le>N\<and>r=n_NI_Local_Get_Get__part__1  src" and
  a2: "(\<exists> p__Inv0. p__Inv0\<le>N\<and>f=inv__115  p__Inv0)"
  shows "invHoldForRule' s f r (invariants N)"
  apply (rule noEffectOnRule, cut_tac a1 a2, auto) done
  

lemma n_NI_Remote_GetX_PutX_HomeVsinv__115:
  assumes a1: "\<exists> dst. dst\<le>N\<and>r=n_NI_Remote_GetX_PutX_Home  dst" and
  a2: "(\<exists> p__Inv0. p__Inv0\<le>N\<and>f=inv__115  p__Inv0)"
  shows "invHoldForRule' s f r (invariants N)"
  apply (rule noEffectOnRule, cut_tac a1 a2, auto) done
  

lemma n_PI_Remote_GetVsinv__115:
  assumes a1: "\<exists> src. src\<le>N\<and>r=n_PI_Remote_Get  src" and
  a2: "(\<exists> p__Inv0. p__Inv0\<le>N\<and>f=inv__115  p__Inv0)"
  shows "invHoldForRule' s f r (invariants N)"
  apply (rule noEffectOnRule, cut_tac a1 a2, auto) done
  

lemma n_PI_Local_GetX_PutX__part__0Vsinv__115:
  assumes a1: "r=n_PI_Local_GetX_PutX__part__0  " and
  a2: "(\<exists> p__Inv0. p__Inv0\<le>N\<and>f=inv__115  p__Inv0)"
  shows "invHoldForRule' s f r (invariants N)"
  apply (rule noEffectOnRule, cut_tac a1 a2, auto) done
  

lemma n_NI_WbVsinv__115:
  assumes a1: "r=n_NI_Wb  " and
  a2: "(\<exists> p__Inv0. p__Inv0\<le>N\<and>f=inv__115  p__Inv0)"
  shows "invHoldForRule' s f r (invariants N)"
  apply (rule noEffectOnRule, cut_tac a1 a2, auto) done
  

lemma n_StoreVsinv__115:
  assumes a1: "\<exists> src data. src\<le>N\<and>data\<le>N\<and>r=n_Store  src data" and
  a2: "(\<exists> p__Inv0. p__Inv0\<le>N\<and>f=inv__115  p__Inv0)"
  shows "invHoldForRule' s f r (invariants N)"
  apply (rule noEffectOnRule, cut_tac a1 a2, auto) done
  

lemma n_NI_Local_GetX_GetX__part__1Vsinv__115:
  assumes a1: "\<exists> src. src\<le>N\<and>r=n_NI_Local_GetX_GetX__part__1  src" and
  a2: "(\<exists> p__Inv0. p__Inv0\<le>N\<and>f=inv__115  p__Inv0)"
  shows "invHoldForRule' s f r (invariants N)"
  apply (rule noEffectOnRule, cut_tac a1 a2, auto) done
  

lemma n_PI_Local_GetX_GetX__part__1Vsinv__115:
  assumes a1: "r=n_PI_Local_GetX_GetX__part__1  " and
  a2: "(\<exists> p__Inv0. p__Inv0\<le>N\<and>f=inv__115  p__Inv0)"
  shows "invHoldForRule' s f r (invariants N)"
  apply (rule noEffectOnRule, cut_tac a1 a2, auto) done
  

lemma n_PI_Local_GetX_GetX__part__0Vsinv__115:
  assumes a1: "r=n_PI_Local_GetX_GetX__part__0  " and
  a2: "(\<exists> p__Inv0. p__Inv0\<le>N\<and>f=inv__115  p__Inv0)"
  shows "invHoldForRule' s f r (invariants N)"
  apply (rule noEffectOnRule, cut_tac a1 a2, auto) done
  

lemma n_PI_Remote_ReplaceVsinv__115:
  assumes a1: "\<exists> src. src\<le>N\<and>r=n_PI_Remote_Replace  src" and
  a2: "(\<exists> p__Inv0. p__Inv0\<le>N\<and>f=inv__115  p__Inv0)"
  shows "invHoldForRule' s f r (invariants N)"
  apply (rule noEffectOnRule, cut_tac a1 a2, auto) done
  

lemma n_Store_HomeVsinv__115:
  assumes a1: "\<exists> data. data\<le>N\<and>r=n_Store_Home  data" and
  a2: "(\<exists> p__Inv0. p__Inv0\<le>N\<and>f=inv__115  p__Inv0)"
  shows "invHoldForRule' s f r (invariants N)"
  apply (rule noEffectOnRule, cut_tac a1 a2, auto) done
  

lemma n_PI_Local_ReplaceVsinv__115:
  assumes a1: "r=n_PI_Local_Replace  " and
  a2: "(\<exists> p__Inv0. p__Inv0\<le>N\<and>f=inv__115  p__Inv0)"
  shows "invHoldForRule' s f r (invariants N)"
  apply (rule noEffectOnRule, cut_tac a1 a2, auto) done
  

lemma n_NI_Local_GetX_Nak__part__1Vsinv__115:
  assumes a1: "\<exists> src. src\<le>N\<and>r=n_NI_Local_GetX_Nak__part__1  src" and
  a2: "(\<exists> p__Inv0. p__Inv0\<le>N\<and>f=inv__115  p__Inv0)"
  shows "invHoldForRule' s f r (invariants N)"
  apply (rule noEffectOnRule, cut_tac a1 a2, auto) done
  

lemma n_NI_Local_Get_Nak__part__1Vsinv__115:
  assumes a1: "\<exists> src. src\<le>N\<and>r=n_NI_Local_Get_Nak__part__1  src" and
  a2: "(\<exists> p__Inv0. p__Inv0\<le>N\<and>f=inv__115  p__Inv0)"
  shows "invHoldForRule' s f r (invariants N)"
  apply (rule noEffectOnRule, cut_tac a1 a2, auto) done
  

lemma n_NI_Local_Get_Get__part__0Vsinv__115:
  assumes a1: "\<exists> src. src\<le>N\<and>r=n_NI_Local_Get_Get__part__0  src" and
  a2: "(\<exists> p__Inv0. p__Inv0\<le>N\<and>f=inv__115  p__Inv0)"
  shows "invHoldForRule' s f r (invariants N)"
  apply (rule noEffectOnRule, cut_tac a1 a2, auto) done
  

lemma n_NI_Local_GetX_Nak__part__2Vsinv__115:
  assumes a1: "\<exists> src. src\<le>N\<and>r=n_NI_Local_GetX_Nak__part__2  src" and
  a2: "(\<exists> p__Inv0. p__Inv0\<le>N\<and>f=inv__115  p__Inv0)"
  shows "invHoldForRule' s f r (invariants N)"
  apply (rule noEffectOnRule, cut_tac a1 a2, auto) done
  

lemma n_PI_Remote_PutXVsinv__115:
  assumes a1: "\<exists> dst. dst\<le>N\<and>r=n_PI_Remote_PutX  dst" and
  a2: "(\<exists> p__Inv0. p__Inv0\<le>N\<and>f=inv__115  p__Inv0)"
  shows "invHoldForRule' s f r (invariants N)"
  apply (rule noEffectOnRule, cut_tac a1 a2, auto) done
  

lemma n_NI_Remote_Get_Put_HomeVsinv__115:
  assumes a1: "\<exists> dst. dst\<le>N\<and>r=n_NI_Remote_Get_Put_Home  dst" and
  a2: "(\<exists> p__Inv0. p__Inv0\<le>N\<and>f=inv__115  p__Inv0)"
  shows "invHoldForRule' s f r (invariants N)"
  apply (rule noEffectOnRule, cut_tac a1 a2, auto) done
  

lemma n_NI_InvVsinv__115:
  assumes a1: "\<exists> dst. dst\<le>N\<and>r=n_NI_Inv  dst" and
  a2: "(\<exists> p__Inv0. p__Inv0\<le>N\<and>f=inv__115  p__Inv0)"
  shows "invHoldForRule' s f r (invariants N)"
  apply (rule noEffectOnRule, cut_tac a1 a2, auto) done
  

lemma n_PI_Local_PutXVsinv__115:
  assumes a1: "r=n_PI_Local_PutX  " and
  a2: "(\<exists> p__Inv0. p__Inv0\<le>N\<and>f=inv__115  p__Inv0)"
  shows "invHoldForRule' s f r (invariants N)"
  apply (rule noEffectOnRule, cut_tac a1 a2, auto) done
  

lemma n_NI_Local_Get_Nak__part__2Vsinv__115:
  assumes a1: "\<exists> src. src\<le>N\<and>r=n_NI_Local_Get_Nak__part__2  src" and
  a2: "(\<exists> p__Inv0. p__Inv0\<le>N\<and>f=inv__115  p__Inv0)"
  shows "invHoldForRule' s f r (invariants N)"
  apply (rule noEffectOnRule, cut_tac a1 a2, auto) done
  

lemma n_NI_Local_GetX_GetX__part__0Vsinv__115:
  assumes a1: "\<exists> src. src\<le>N\<and>r=n_NI_Local_GetX_GetX__part__0  src" and
  a2: "(\<exists> p__Inv0. p__Inv0\<le>N\<and>f=inv__115  p__Inv0)"
  shows "invHoldForRule' s f r (invariants N)"
  apply (rule noEffectOnRule, cut_tac a1 a2, auto) done
  

lemma n_PI_Local_Get_PutVsinv__115:
  assumes a1: "r=n_PI_Local_Get_Put  " and
  a2: "(\<exists> p__Inv0. p__Inv0\<le>N\<and>f=inv__115  p__Inv0)"
  shows "invHoldForRule' s f r (invariants N)"
  apply (rule noEffectOnRule, cut_tac a1 a2, auto) done
  

lemma n_NI_Local_PutXAcksDoneVsinv__115:
  assumes a1: "r=n_NI_Local_PutXAcksDone  " and
  a2: "(\<exists> p__Inv0. p__Inv0\<le>N\<and>f=inv__115  p__Inv0)"
  shows "invHoldForRule' s f r (invariants N)"
  apply (rule noEffectOnRule, cut_tac a1 a2, auto) done
  

lemma n_NI_NakVsinv__115:
  assumes a1: "\<exists> dst. dst\<le>N\<and>r=n_NI_Nak  dst" and
  a2: "(\<exists> p__Inv0. p__Inv0\<le>N\<and>f=inv__115  p__Inv0)"
  shows "invHoldForRule' s f r (invariants N)"
  apply (rule noEffectOnRule, cut_tac a1 a2, auto) done
  

lemma n_PI_Remote_GetXVsinv__115:
  assumes a1: "\<exists> src. src\<le>N\<and>r=n_PI_Remote_GetX  src" and
  a2: "(\<exists> p__Inv0. p__Inv0\<le>N\<and>f=inv__115  p__Inv0)"
  shows "invHoldForRule' s f r (invariants N)"
  apply (rule noEffectOnRule, cut_tac a1 a2, auto) done
  

lemma n_PI_Local_GetX_PutX__part__1Vsinv__115:
  assumes a1: "r=n_PI_Local_GetX_PutX__part__1  " and
  a2: "(\<exists> p__Inv0. p__Inv0\<le>N\<and>f=inv__115  p__Inv0)"
  shows "invHoldForRule' s f r (invariants N)"
  apply (rule noEffectOnRule, cut_tac a1 a2, auto) done
  

lemma n_NI_Remote_PutXVsinv__115:
  assumes a1: "\<exists> dst. dst\<le>N\<and>r=n_NI_Remote_PutX  dst" and
  a2: "(\<exists> p__Inv0. p__Inv0\<le>N\<and>f=inv__115  p__Inv0)"
  shows "invHoldForRule' s f r (invariants N)"
  apply (rule noEffectOnRule, cut_tac a1 a2, auto) done
  

lemma n_NI_Remote_PutVsinv__115:
  assumes a1: "\<exists> dst. dst\<le>N\<and>r=n_NI_Remote_Put  dst" and
  a2: "(\<exists> p__Inv0. p__Inv0\<le>N\<and>f=inv__115  p__Inv0)"
  shows "invHoldForRule' s f r (invariants N)"
  apply (rule noEffectOnRule, cut_tac a1 a2, auto) done
  

lemma n_NI_Local_Get_PutVsinv__115:
  assumes a1: "\<exists> src. src\<le>N\<and>r=n_NI_Local_Get_Put  src" and
  a2: "(\<exists> p__Inv0. p__Inv0\<le>N\<and>f=inv__115  p__Inv0)"
  shows "invHoldForRule' s f r (invariants N)"
  apply (rule noEffectOnRule, cut_tac a1 a2, auto) done
  

lemma n_NI_Local_GetX_Nak__part__0Vsinv__115:
  assumes a1: "\<exists> src. src\<le>N\<and>r=n_NI_Local_GetX_Nak__part__0  src" and
  a2: "(\<exists> p__Inv0. p__Inv0\<le>N\<and>f=inv__115  p__Inv0)"
  shows "invHoldForRule' s f r (invariants N)"
  apply (rule noEffectOnRule, cut_tac a1 a2, auto) done
  

lemma n_NI_Replace_HomeVsinv__115:
  assumes a1: "r=n_NI_Replace_Home  " and
  a2: "(\<exists> p__Inv0. p__Inv0\<le>N\<and>f=inv__115  p__Inv0)"
  shows "invHoldForRule' s f r (invariants N)"
  apply (rule noEffectOnRule, cut_tac a1 a2, auto) done
  

lemma n_NI_Remote_GetX_PutXVsinv__115:
  assumes a1: "\<exists> src dst. src\<le>N\<and>dst\<le>N\<and>src~=dst\<and>r=n_NI_Remote_GetX_PutX  src dst" and
  a2: "(\<exists> p__Inv0. p__Inv0\<le>N\<and>f=inv__115  p__Inv0)"
  shows "invHoldForRule' s f r (invariants N)"
  apply (rule noEffectOnRule, cut_tac a1 a2, auto) done
  

lemma n_NI_Local_PutVsinv__115:
  assumes a1: "r=n_NI_Local_Put  " and
  a2: "(\<exists> p__Inv0. p__Inv0\<le>N\<and>f=inv__115  p__Inv0)"
  shows "invHoldForRule' s f r (invariants N)"
  apply (rule noEffectOnRule, cut_tac a1 a2, auto) done
  

lemma n_NI_Local_Get_Put_DirtyVsinv__115:
  assumes a1: "\<exists> src. src\<le>N\<and>r=n_NI_Local_Get_Put_Dirty  src" and
  a2: "(\<exists> p__Inv0. p__Inv0\<le>N\<and>f=inv__115  p__Inv0)"
  shows "invHoldForRule' s f r (invariants N)"
  apply (rule noEffectOnRule, cut_tac a1 a2, auto) done
  

lemma n_NI_Local_Get_Nak__part__0Vsinv__115:
  assumes a1: "\<exists> src. src\<le>N\<and>r=n_NI_Local_Get_Nak__part__0  src" and
  a2: "(\<exists> p__Inv0. p__Inv0\<le>N\<and>f=inv__115  p__Inv0)"
  shows "invHoldForRule' s f r (invariants N)"
  apply (rule noEffectOnRule, cut_tac a1 a2, auto) done
  

lemma n_PI_Local_Get_GetVsinv__115:
  assumes a1: "r=n_PI_Local_Get_Get  " and
  a2: "(\<exists> p__Inv0. p__Inv0\<le>N\<and>f=inv__115  p__Inv0)"
  shows "invHoldForRule' s f r (invariants N)"
  apply (rule noEffectOnRule, cut_tac a1 a2, auto) done
  

lemma n_NI_Remote_Get_PutVsinv__115:
  assumes a1: "\<exists> src dst. src\<le>N\<and>dst\<le>N\<and>src~=dst\<and>r=n_NI_Remote_Get_Put  src dst" and
  a2: "(\<exists> p__Inv0. p__Inv0\<le>N\<and>f=inv__115  p__Inv0)"
  shows "invHoldForRule' s f r (invariants N)"
  apply (rule noEffectOnRule, cut_tac a1 a2, auto) done
  

lemma n_NI_Nak_HomeVsinv__115:
  assumes a1: "r=n_NI_Nak_Home  " and
  a2: "(\<exists> p__Inv0. p__Inv0\<le>N\<and>f=inv__115  p__Inv0)"
  shows "invHoldForRule' s f r (invariants N)"
  apply (rule noEffectOnRule, cut_tac a1 a2, auto) done
  

lemma n_NI_FAckVsinv__115:
  assumes a1: "r=n_NI_FAck  " and
  a2: "(\<exists> p__Inv0. p__Inv0\<le>N\<and>f=inv__115  p__Inv0)"
  shows "invHoldForRule' s f r (invariants N)"
  apply (rule noEffectOnRule, cut_tac a1 a2, auto) done
  
end