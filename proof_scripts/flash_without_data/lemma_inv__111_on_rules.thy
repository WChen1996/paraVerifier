theory lemma_inv__111_on_rules imports lemma_on_inv__111
begin
lemma lemma_inv__111_on_rules:
  assumes b1: "r \<in> rules N" and b2: "(\<exists> p__Inv0 p__Inv1. p__Inv0\<le>N\<and>p__Inv1\<le>N\<and>p__Inv0~=p__Inv1\<and>f=inv__111  p__Inv0 p__Inv1)"
  shows "invHoldForRule' s f r (invariants N)"
  proof -
  have c1: "(\<exists> src. src\<le>N\<and>r=n_PI_Remote_Get  src)\<or>
    (\<exists> src. src\<le>N\<and>r=n_PI_Remote_GetX  src)\<or>
    (\<exists> dst. dst\<le>N\<and>r=n_PI_Remote_PutX  dst)\<or>
    (\<exists> src. src\<le>N\<and>r=n_PI_Remote_Replace  src)\<or>
    (\<exists> dst. dst\<le>N\<and>r=n_NI_Nak  dst)\<or>
    (\<exists> src. src\<le>N\<and>r=n_NI_Local_Get_Nak__part__0  src)\<or>
    (\<exists> src. src\<le>N\<and>r=n_NI_Local_Get_Nak__part__1  src)\<or>
    (\<exists> src. src\<le>N\<and>r=n_NI_Local_Get_Nak__part__2  src)\<or>
    (\<exists> src. src\<le>N\<and>r=n_NI_Local_Get_Get__part__0  src)\<or>
    (\<exists> src. src\<le>N\<and>r=n_NI_Local_Get_Get__part__1  src)\<or>
    (\<exists> src. src\<le>N\<and>r=n_NI_Local_Get_Put_Head N src)\<or>
    (\<exists> src. src\<le>N\<and>r=n_NI_Local_Get_Put  src)\<or>
    (\<exists> src. src\<le>N\<and>r=n_NI_Local_Get_Put_Dirty  src)\<or>
    (\<exists> src dst. src\<le>N\<and>dst\<le>N\<and>src~=dst\<and>r=n_NI_Remote_Get_Nak  src dst)\<or>
    (\<exists> dst. dst\<le>N\<and>r=n_NI_Remote_Get_Nak_Home  dst)\<or>
    (\<exists> src dst. src\<le>N\<and>dst\<le>N\<and>src~=dst\<and>r=n_NI_Remote_Get_Put  src dst)\<or>
    (\<exists> dst. dst\<le>N\<and>r=n_NI_Remote_Get_Put_Home  dst)\<or>
    (\<exists> src. src\<le>N\<and>r=n_NI_Local_GetX_Nak__part__0  src)\<or>
    (\<exists> src. src\<le>N\<and>r=n_NI_Local_GetX_Nak__part__1  src)\<or>
    (\<exists> src. src\<le>N\<and>r=n_NI_Local_GetX_Nak__part__2  src)\<or>
    (\<exists> src. src\<le>N\<and>r=n_NI_Local_GetX_GetX__part__0  src)\<or>
    (\<exists> src. src\<le>N\<and>r=n_NI_Local_GetX_GetX__part__1  src)\<or>
    (\<exists> src. src\<le>N\<and>r=n_NI_Local_GetX_PutX_1 N src)\<or>
    (\<exists> src. src\<le>N\<and>r=n_NI_Local_GetX_PutX_2 N src)\<or>
    (\<exists> src. src\<le>N\<and>r=n_NI_Local_GetX_PutX_3 N src)\<or>
    (\<exists> src. src\<le>N\<and>r=n_NI_Local_GetX_PutX_4 N src)\<or>
    (\<exists> src. src\<le>N\<and>r=n_NI_Local_GetX_PutX_5 N src)\<or>
    (\<exists> src. src\<le>N\<and>r=n_NI_Local_GetX_PutX_6 N src)\<or>
    (\<exists> src. src\<le>N\<and>r=n_NI_Local_GetX_PutX_7__part__0 N src)\<or>
    (\<exists> src. src\<le>N\<and>r=n_NI_Local_GetX_PutX_7__part__1 N src)\<or>
    (\<exists> src. src\<le>N\<and>r=n_NI_Local_GetX_PutX_7_NODE_Get__part__0 N src)\<or>
    (\<exists> src. src\<le>N\<and>r=n_NI_Local_GetX_PutX_7_NODE_Get__part__1 N src)\<or>
    (\<exists> src. src\<le>N\<and>r=n_NI_Local_GetX_PutX_8_Home N src)\<or>
    (\<exists> src. src\<le>N\<and>r=n_NI_Local_GetX_PutX_8_Home_NODE_Get N src)\<or>
    (\<exists> src pp. src\<le>N\<and>pp\<le>N\<and>src~=pp\<and>r=n_NI_Local_GetX_PutX_8 N src pp)\<or>
    (\<exists> src pp. src\<le>N\<and>pp\<le>N\<and>src~=pp\<and>r=n_NI_Local_GetX_PutX_8_NODE_Get N src pp)\<or>
    (\<exists> src. src\<le>N\<and>r=n_NI_Local_GetX_PutX_9__part__0 N src)\<or>
    (\<exists> src. src\<le>N\<and>r=n_NI_Local_GetX_PutX_9__part__1 N src)\<or>
    (\<exists> src. src\<le>N\<and>r=n_NI_Local_GetX_PutX_10_Home N src)\<or>
    (\<exists> src pp. src\<le>N\<and>pp\<le>N\<and>src~=pp\<and>r=n_NI_Local_GetX_PutX_10 N src pp)\<or>
    (\<exists> src. src\<le>N\<and>r=n_NI_Local_GetX_PutX_11 N src)\<or>
    (\<exists> src dst. src\<le>N\<and>dst\<le>N\<and>src~=dst\<and>r=n_NI_Remote_GetX_Nak  src dst)\<or>
    (\<exists> dst. dst\<le>N\<and>r=n_NI_Remote_GetX_Nak_Home  dst)\<or>
    (\<exists> src dst. src\<le>N\<and>dst\<le>N\<and>src~=dst\<and>r=n_NI_Remote_GetX_PutX  src dst)\<or>
    (\<exists> dst. dst\<le>N\<and>r=n_NI_Remote_GetX_PutX_Home  dst)\<or>
    (\<exists> dst. dst\<le>N\<and>r=n_NI_Remote_Put  dst)\<or>
    (\<exists> dst. dst\<le>N\<and>r=n_NI_Remote_PutX  dst)\<or>
    (\<exists> dst. dst\<le>N\<and>r=n_NI_Inv  dst)\<or>
    (\<exists> src. src\<le>N\<and>r=n_NI_InvAck_exists_Home  src)\<or>
    (\<exists> src pp. src\<le>N\<and>pp\<le>N\<and>src~=pp\<and>r=n_NI_InvAck_exists  src pp)\<or>
    (\<exists> src. src\<le>N\<and>r=n_NI_InvAck_1 N src)\<or>
    (\<exists> src. src\<le>N\<and>r=n_NI_InvAck_2 N src)\<or>
    (\<exists> src. src\<le>N\<and>r=n_NI_InvAck_3 N src)\<or>
    (\<exists> src. src\<le>N\<and>r=n_NI_Replace  src)\<or>
    (r=n_PI_Local_Get_Get  )\<or>
    (r=n_PI_Local_Get_Put  )\<or>
    (r=n_PI_Local_GetX_GetX__part__0  )\<or>
    (r=n_PI_Local_GetX_GetX__part__1  )\<or>
    (r=n_PI_Local_GetX_PutX_HeadVld__part__0 N )\<or>
    (r=n_PI_Local_GetX_PutX_HeadVld__part__1 N )\<or>
    (r=n_PI_Local_GetX_PutX__part__0  )\<or>
    (r=n_PI_Local_GetX_PutX__part__1  )\<or>
    (r=n_PI_Local_PutX  )\<or>
    (r=n_PI_Local_Replace  )\<or>
    (r=n_NI_Nak_Home  )\<or>
    (r=n_NI_Nak_Clear  )\<or>
    (r=n_NI_Local_Put  )\<or>
    (r=n_NI_Local_PutXAcksDone  )\<or>
    (r=n_NI_Wb  )\<or>
    (r=n_NI_FAck  )\<or>
    (r=n_NI_ShWb N )\<or>
    (r=n_NI_Replace_Home  )"
  apply (cut_tac b1, auto) done
    moreover {
      assume d1: "(\<exists> src. src\<le>N\<and>r=n_PI_Remote_Get  src)"
      have "invHoldForRule' s f r (invariants N)"
      apply (cut_tac b2 d1, metis n_PI_Remote_GetVsinv__111) done
    }

    moreover {
      assume d1: "(\<exists> src. src\<le>N\<and>r=n_PI_Remote_GetX  src)"
      have "invHoldForRule' s f r (invariants N)"
      apply (cut_tac b2 d1, metis n_PI_Remote_GetXVsinv__111) done
    }

    moreover {
      assume d1: "(\<exists> dst. dst\<le>N\<and>r=n_PI_Remote_PutX  dst)"
      have "invHoldForRule' s f r (invariants N)"
      apply (cut_tac b2 d1, metis n_PI_Remote_PutXVsinv__111) done
    }

    moreover {
      assume d1: "(\<exists> src. src\<le>N\<and>r=n_PI_Remote_Replace  src)"
      have "invHoldForRule' s f r (invariants N)"
      apply (cut_tac b2 d1, metis n_PI_Remote_ReplaceVsinv__111) done
    }

    moreover {
      assume d1: "(\<exists> dst. dst\<le>N\<and>r=n_NI_Nak  dst)"
      have "invHoldForRule' s f r (invariants N)"
      apply (cut_tac b2 d1, metis n_NI_NakVsinv__111) done
    }

    moreover {
      assume d1: "(\<exists> src. src\<le>N\<and>r=n_NI_Local_Get_Nak__part__0  src)"
      have "invHoldForRule' s f r (invariants N)"
      apply (cut_tac b2 d1, metis n_NI_Local_Get_Nak__part__0Vsinv__111) done
    }

    moreover {
      assume d1: "(\<exists> src. src\<le>N\<and>r=n_NI_Local_Get_Nak__part__1  src)"
      have "invHoldForRule' s f r (invariants N)"
      apply (cut_tac b2 d1, metis n_NI_Local_Get_Nak__part__1Vsinv__111) done
    }

    moreover {
      assume d1: "(\<exists> src. src\<le>N\<and>r=n_NI_Local_Get_Nak__part__2  src)"
      have "invHoldForRule' s f r (invariants N)"
      apply (cut_tac b2 d1, metis n_NI_Local_Get_Nak__part__2Vsinv__111) done
    }

    moreover {
      assume d1: "(\<exists> src. src\<le>N\<and>r=n_NI_Local_Get_Get__part__0  src)"
      have "invHoldForRule' s f r (invariants N)"
      apply (cut_tac b2 d1, metis n_NI_Local_Get_Get__part__0Vsinv__111) done
    }

    moreover {
      assume d1: "(\<exists> src. src\<le>N\<and>r=n_NI_Local_Get_Get__part__1  src)"
      have "invHoldForRule' s f r (invariants N)"
      apply (cut_tac b2 d1, metis n_NI_Local_Get_Get__part__1Vsinv__111) done
    }

    moreover {
      assume d1: "(\<exists> src. src\<le>N\<and>r=n_NI_Local_Get_Put_Head N src)"
      have "invHoldForRule' s f r (invariants N)"
      apply (cut_tac b2 d1, metis n_NI_Local_Get_Put_HeadVsinv__111) done
    }

    moreover {
      assume d1: "(\<exists> src. src\<le>N\<and>r=n_NI_Local_Get_Put  src)"
      have "invHoldForRule' s f r (invariants N)"
      apply (cut_tac b2 d1, metis n_NI_Local_Get_PutVsinv__111) done
    }

    moreover {
      assume d1: "(\<exists> src. src\<le>N\<and>r=n_NI_Local_Get_Put_Dirty  src)"
      have "invHoldForRule' s f r (invariants N)"
      apply (cut_tac b2 d1, metis n_NI_Local_Get_Put_DirtyVsinv__111) done
    }

    moreover {
      assume d1: "(\<exists> src dst. src\<le>N\<and>dst\<le>N\<and>src~=dst\<and>r=n_NI_Remote_Get_Nak  src dst)"
      have "invHoldForRule' s f r (invariants N)"
      apply (cut_tac b2 d1, metis n_NI_Remote_Get_NakVsinv__111) done
    }

    moreover {
      assume d1: "(\<exists> dst. dst\<le>N\<and>r=n_NI_Remote_Get_Nak_Home  dst)"
      have "invHoldForRule' s f r (invariants N)"
      apply (cut_tac b2 d1, metis n_NI_Remote_Get_Nak_HomeVsinv__111) done
    }

    moreover {
      assume d1: "(\<exists> src dst. src\<le>N\<and>dst\<le>N\<and>src~=dst\<and>r=n_NI_Remote_Get_Put  src dst)"
      have "invHoldForRule' s f r (invariants N)"
      apply (cut_tac b2 d1, metis n_NI_Remote_Get_PutVsinv__111) done
    }

    moreover {
      assume d1: "(\<exists> dst. dst\<le>N\<and>r=n_NI_Remote_Get_Put_Home  dst)"
      have "invHoldForRule' s f r (invariants N)"
      apply (cut_tac b2 d1, metis n_NI_Remote_Get_Put_HomeVsinv__111) done
    }

    moreover {
      assume d1: "(\<exists> src. src\<le>N\<and>r=n_NI_Local_GetX_Nak__part__0  src)"
      have "invHoldForRule' s f r (invariants N)"
      apply (cut_tac b2 d1, metis n_NI_Local_GetX_Nak__part__0Vsinv__111) done
    }

    moreover {
      assume d1: "(\<exists> src. src\<le>N\<and>r=n_NI_Local_GetX_Nak__part__1  src)"
      have "invHoldForRule' s f r (invariants N)"
      apply (cut_tac b2 d1, metis n_NI_Local_GetX_Nak__part__1Vsinv__111) done
    }

    moreover {
      assume d1: "(\<exists> src. src\<le>N\<and>r=n_NI_Local_GetX_Nak__part__2  src)"
      have "invHoldForRule' s f r (invariants N)"
      apply (cut_tac b2 d1, metis n_NI_Local_GetX_Nak__part__2Vsinv__111) done
    }

    moreover {
      assume d1: "(\<exists> src. src\<le>N\<and>r=n_NI_Local_GetX_GetX__part__0  src)"
      have "invHoldForRule' s f r (invariants N)"
      apply (cut_tac b2 d1, metis n_NI_Local_GetX_GetX__part__0Vsinv__111) done
    }

    moreover {
      assume d1: "(\<exists> src. src\<le>N\<and>r=n_NI_Local_GetX_GetX__part__1  src)"
      have "invHoldForRule' s f r (invariants N)"
      apply (cut_tac b2 d1, metis n_NI_Local_GetX_GetX__part__1Vsinv__111) done
    }

    moreover {
      assume d1: "(\<exists> src. src\<le>N\<and>r=n_NI_Local_GetX_PutX_1 N src)"
      have "invHoldForRule' s f r (invariants N)"
      apply (cut_tac b2 d1, metis n_NI_Local_GetX_PutX_1Vsinv__111) done
    }

    moreover {
      assume d1: "(\<exists> src. src\<le>N\<and>r=n_NI_Local_GetX_PutX_2 N src)"
      have "invHoldForRule' s f r (invariants N)"
      apply (cut_tac b2 d1, metis n_NI_Local_GetX_PutX_2Vsinv__111) done
    }

    moreover {
      assume d1: "(\<exists> src. src\<le>N\<and>r=n_NI_Local_GetX_PutX_3 N src)"
      have "invHoldForRule' s f r (invariants N)"
      apply (cut_tac b2 d1, metis n_NI_Local_GetX_PutX_3Vsinv__111) done
    }

    moreover {
      assume d1: "(\<exists> src. src\<le>N\<and>r=n_NI_Local_GetX_PutX_4 N src)"
      have "invHoldForRule' s f r (invariants N)"
      apply (cut_tac b2 d1, metis n_NI_Local_GetX_PutX_4Vsinv__111) done
    }

    moreover {
      assume d1: "(\<exists> src. src\<le>N\<and>r=n_NI_Local_GetX_PutX_5 N src)"
      have "invHoldForRule' s f r (invariants N)"
      apply (cut_tac b2 d1, metis n_NI_Local_GetX_PutX_5Vsinv__111) done
    }

    moreover {
      assume d1: "(\<exists> src. src\<le>N\<and>r=n_NI_Local_GetX_PutX_6 N src)"
      have "invHoldForRule' s f r (invariants N)"
      apply (cut_tac b2 d1, metis n_NI_Local_GetX_PutX_6Vsinv__111) done
    }

    moreover {
      assume d1: "(\<exists> src. src\<le>N\<and>r=n_NI_Local_GetX_PutX_7__part__0 N src)"
      have "invHoldForRule' s f r (invariants N)"
      apply (cut_tac b2 d1, metis n_NI_Local_GetX_PutX_7__part__0Vsinv__111) done
    }

    moreover {
      assume d1: "(\<exists> src. src\<le>N\<and>r=n_NI_Local_GetX_PutX_7__part__1 N src)"
      have "invHoldForRule' s f r (invariants N)"
      apply (cut_tac b2 d1, metis n_NI_Local_GetX_PutX_7__part__1Vsinv__111) done
    }

    moreover {
      assume d1: "(\<exists> src. src\<le>N\<and>r=n_NI_Local_GetX_PutX_7_NODE_Get__part__0 N src)"
      have "invHoldForRule' s f r (invariants N)"
      apply (cut_tac b2 d1, metis n_NI_Local_GetX_PutX_7_NODE_Get__part__0Vsinv__111) done
    }

    moreover {
      assume d1: "(\<exists> src. src\<le>N\<and>r=n_NI_Local_GetX_PutX_7_NODE_Get__part__1 N src)"
      have "invHoldForRule' s f r (invariants N)"
      apply (cut_tac b2 d1, metis n_NI_Local_GetX_PutX_7_NODE_Get__part__1Vsinv__111) done
    }

    moreover {
      assume d1: "(\<exists> src. src\<le>N\<and>r=n_NI_Local_GetX_PutX_8_Home N src)"
      have "invHoldForRule' s f r (invariants N)"
      apply (cut_tac b2 d1, metis n_NI_Local_GetX_PutX_8_HomeVsinv__111) done
    }

    moreover {
      assume d1: "(\<exists> src. src\<le>N\<and>r=n_NI_Local_GetX_PutX_8_Home_NODE_Get N src)"
      have "invHoldForRule' s f r (invariants N)"
      apply (cut_tac b2 d1, metis n_NI_Local_GetX_PutX_8_Home_NODE_GetVsinv__111) done
    }

    moreover {
      assume d1: "(\<exists> src pp. src\<le>N\<and>pp\<le>N\<and>src~=pp\<and>r=n_NI_Local_GetX_PutX_8 N src pp)"
      have "invHoldForRule' s f r (invariants N)"
      apply (cut_tac b2 d1, metis n_NI_Local_GetX_PutX_8Vsinv__111) done
    }

    moreover {
      assume d1: "(\<exists> src pp. src\<le>N\<and>pp\<le>N\<and>src~=pp\<and>r=n_NI_Local_GetX_PutX_8_NODE_Get N src pp)"
      have "invHoldForRule' s f r (invariants N)"
      apply (cut_tac b2 d1, metis n_NI_Local_GetX_PutX_8_NODE_GetVsinv__111) done
    }

    moreover {
      assume d1: "(\<exists> src. src\<le>N\<and>r=n_NI_Local_GetX_PutX_9__part__0 N src)"
      have "invHoldForRule' s f r (invariants N)"
      apply (cut_tac b2 d1, metis n_NI_Local_GetX_PutX_9__part__0Vsinv__111) done
    }

    moreover {
      assume d1: "(\<exists> src. src\<le>N\<and>r=n_NI_Local_GetX_PutX_9__part__1 N src)"
      have "invHoldForRule' s f r (invariants N)"
      apply (cut_tac b2 d1, metis n_NI_Local_GetX_PutX_9__part__1Vsinv__111) done
    }

    moreover {
      assume d1: "(\<exists> src. src\<le>N\<and>r=n_NI_Local_GetX_PutX_10_Home N src)"
      have "invHoldForRule' s f r (invariants N)"
      apply (cut_tac b2 d1, metis n_NI_Local_GetX_PutX_10_HomeVsinv__111) done
    }

    moreover {
      assume d1: "(\<exists> src pp. src\<le>N\<and>pp\<le>N\<and>src~=pp\<and>r=n_NI_Local_GetX_PutX_10 N src pp)"
      have "invHoldForRule' s f r (invariants N)"
      apply (cut_tac b2 d1, metis n_NI_Local_GetX_PutX_10Vsinv__111) done
    }

    moreover {
      assume d1: "(\<exists> src. src\<le>N\<and>r=n_NI_Local_GetX_PutX_11 N src)"
      have "invHoldForRule' s f r (invariants N)"
      apply (cut_tac b2 d1, metis n_NI_Local_GetX_PutX_11Vsinv__111) done
    }

    moreover {
      assume d1: "(\<exists> src dst. src\<le>N\<and>dst\<le>N\<and>src~=dst\<and>r=n_NI_Remote_GetX_Nak  src dst)"
      have "invHoldForRule' s f r (invariants N)"
      apply (cut_tac b2 d1, metis n_NI_Remote_GetX_NakVsinv__111) done
    }

    moreover {
      assume d1: "(\<exists> dst. dst\<le>N\<and>r=n_NI_Remote_GetX_Nak_Home  dst)"
      have "invHoldForRule' s f r (invariants N)"
      apply (cut_tac b2 d1, metis n_NI_Remote_GetX_Nak_HomeVsinv__111) done
    }

    moreover {
      assume d1: "(\<exists> src dst. src\<le>N\<and>dst\<le>N\<and>src~=dst\<and>r=n_NI_Remote_GetX_PutX  src dst)"
      have "invHoldForRule' s f r (invariants N)"
      apply (cut_tac b2 d1, metis n_NI_Remote_GetX_PutXVsinv__111) done
    }

    moreover {
      assume d1: "(\<exists> dst. dst\<le>N\<and>r=n_NI_Remote_GetX_PutX_Home  dst)"
      have "invHoldForRule' s f r (invariants N)"
      apply (cut_tac b2 d1, metis n_NI_Remote_GetX_PutX_HomeVsinv__111) done
    }

    moreover {
      assume d1: "(\<exists> dst. dst\<le>N\<and>r=n_NI_Remote_Put  dst)"
      have "invHoldForRule' s f r (invariants N)"
      apply (cut_tac b2 d1, metis n_NI_Remote_PutVsinv__111) done
    }

    moreover {
      assume d1: "(\<exists> dst. dst\<le>N\<and>r=n_NI_Remote_PutX  dst)"
      have "invHoldForRule' s f r (invariants N)"
      apply (cut_tac b2 d1, metis n_NI_Remote_PutXVsinv__111) done
    }

    moreover {
      assume d1: "(\<exists> dst. dst\<le>N\<and>r=n_NI_Inv  dst)"
      have "invHoldForRule' s f r (invariants N)"
      apply (cut_tac b2 d1, metis n_NI_InvVsinv__111) done
    }

    moreover {
      assume d1: "(\<exists> src. src\<le>N\<and>r=n_NI_InvAck_exists_Home  src)"
      have "invHoldForRule' s f r (invariants N)"
      apply (cut_tac b2 d1, metis n_NI_InvAck_exists_HomeVsinv__111) done
    }

    moreover {
      assume d1: "(\<exists> src pp. src\<le>N\<and>pp\<le>N\<and>src~=pp\<and>r=n_NI_InvAck_exists  src pp)"
      have "invHoldForRule' s f r (invariants N)"
      apply (cut_tac b2 d1, metis n_NI_InvAck_existsVsinv__111) done
    }

    moreover {
      assume d1: "(\<exists> src. src\<le>N\<and>r=n_NI_InvAck_1 N src)"
      have "invHoldForRule' s f r (invariants N)"
      apply (cut_tac b2 d1, metis n_NI_InvAck_1Vsinv__111) done
    }

    moreover {
      assume d1: "(\<exists> src. src\<le>N\<and>r=n_NI_InvAck_2 N src)"
      have "invHoldForRule' s f r (invariants N)"
      apply (cut_tac b2 d1, metis n_NI_InvAck_2Vsinv__111) done
    }

    moreover {
      assume d1: "(\<exists> src. src\<le>N\<and>r=n_NI_InvAck_3 N src)"
      have "invHoldForRule' s f r (invariants N)"
      apply (cut_tac b2 d1, metis n_NI_InvAck_3Vsinv__111) done
    }

    moreover {
      assume d1: "(\<exists> src. src\<le>N\<and>r=n_NI_Replace  src)"
      have "invHoldForRule' s f r (invariants N)"
      apply (cut_tac b2 d1, metis n_NI_ReplaceVsinv__111) done
    }

    moreover {
      assume d1: "(r=n_PI_Local_Get_Get  )"
      have "invHoldForRule' s f r (invariants N)"
      apply (cut_tac b2 d1, metis n_PI_Local_Get_GetVsinv__111) done
    }

    moreover {
      assume d1: "(r=n_PI_Local_Get_Put  )"
      have "invHoldForRule' s f r (invariants N)"
      apply (cut_tac b2 d1, metis n_PI_Local_Get_PutVsinv__111) done
    }

    moreover {
      assume d1: "(r=n_PI_Local_GetX_GetX__part__0  )"
      have "invHoldForRule' s f r (invariants N)"
      apply (cut_tac b2 d1, metis n_PI_Local_GetX_GetX__part__0Vsinv__111) done
    }

    moreover {
      assume d1: "(r=n_PI_Local_GetX_GetX__part__1  )"
      have "invHoldForRule' s f r (invariants N)"
      apply (cut_tac b2 d1, metis n_PI_Local_GetX_GetX__part__1Vsinv__111) done
    }

    moreover {
      assume d1: "(r=n_PI_Local_GetX_PutX_HeadVld__part__0 N )"
      have "invHoldForRule' s f r (invariants N)"
      apply (cut_tac b2 d1, metis n_PI_Local_GetX_PutX_HeadVld__part__0Vsinv__111) done
    }

    moreover {
      assume d1: "(r=n_PI_Local_GetX_PutX_HeadVld__part__1 N )"
      have "invHoldForRule' s f r (invariants N)"
      apply (cut_tac b2 d1, metis n_PI_Local_GetX_PutX_HeadVld__part__1Vsinv__111) done
    }

    moreover {
      assume d1: "(r=n_PI_Local_GetX_PutX__part__0  )"
      have "invHoldForRule' s f r (invariants N)"
      apply (cut_tac b2 d1, metis n_PI_Local_GetX_PutX__part__0Vsinv__111) done
    }

    moreover {
      assume d1: "(r=n_PI_Local_GetX_PutX__part__1  )"
      have "invHoldForRule' s f r (invariants N)"
      apply (cut_tac b2 d1, metis n_PI_Local_GetX_PutX__part__1Vsinv__111) done
    }

    moreover {
      assume d1: "(r=n_PI_Local_PutX  )"
      have "invHoldForRule' s f r (invariants N)"
      apply (cut_tac b2 d1, metis n_PI_Local_PutXVsinv__111) done
    }

    moreover {
      assume d1: "(r=n_PI_Local_Replace  )"
      have "invHoldForRule' s f r (invariants N)"
      apply (cut_tac b2 d1, metis n_PI_Local_ReplaceVsinv__111) done
    }

    moreover {
      assume d1: "(r=n_NI_Nak_Home  )"
      have "invHoldForRule' s f r (invariants N)"
      apply (cut_tac b2 d1, metis n_NI_Nak_HomeVsinv__111) done
    }

    moreover {
      assume d1: "(r=n_NI_Nak_Clear  )"
      have "invHoldForRule' s f r (invariants N)"
      apply (cut_tac b2 d1, metis n_NI_Nak_ClearVsinv__111) done
    }

    moreover {
      assume d1: "(r=n_NI_Local_Put  )"
      have "invHoldForRule' s f r (invariants N)"
      apply (cut_tac b2 d1, metis n_NI_Local_PutVsinv__111) done
    }

    moreover {
      assume d1: "(r=n_NI_Local_PutXAcksDone  )"
      have "invHoldForRule' s f r (invariants N)"
      apply (cut_tac b2 d1, metis n_NI_Local_PutXAcksDoneVsinv__111) done
    }

    moreover {
      assume d1: "(r=n_NI_Wb  )"
      have "invHoldForRule' s f r (invariants N)"
      apply (cut_tac b2 d1, metis n_NI_WbVsinv__111) done
    }

    moreover {
      assume d1: "(r=n_NI_FAck  )"
      have "invHoldForRule' s f r (invariants N)"
      apply (cut_tac b2 d1, metis n_NI_FAckVsinv__111) done
    }

    moreover {
      assume d1: "(r=n_NI_ShWb N )"
      have "invHoldForRule' s f r (invariants N)"
      apply (cut_tac b2 d1, metis n_NI_ShWbVsinv__111) done
    }

    moreover {
      assume d1: "(r=n_NI_Replace_Home  )"
      have "invHoldForRule' s f r (invariants N)"
      apply (cut_tac b2 d1, metis n_NI_Replace_HomeVsinv__111) done
    }

  ultimately show "invHoldForRule' s f r (invariants N)"
  apply fastforce done
qed

end
