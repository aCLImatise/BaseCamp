version 1.0

task Sortgrcd {
  input {
    Boolean cnCn
    Boolean enEn
    Boolean fnFn
    Boolean gnGn
    Boolean hnHn
    Boolean jnJn
    Boolean mnMn
    Boolean nnNn
    Boolean onOn
    Boolean pnPn
    Boolean unUn
    Boolean lnLn
    Boolean mnMn
    Boolean nnNn
    Boolean unUn
    Boolean gsGs
    Boolean saSa
    Boolean sbSb
    Boolean scSc
    Boolean srSr
  }
  command <<<
    sortgrcd \
      ~{true="-CN" false="" cnCn} \
      ~{true="-EN" false="" enEn} \
      ~{true="-FN" false="" fnFn} \
      ~{true="-GN" false="" gnGn} \
      ~{true="-HN" false="" hnHn} \
      ~{true="-JN" false="" jnJn} \
      ~{true="-MN" false="" mnMn} \
      ~{true="-NN" false="" nnNn} \
      ~{true="-ON" false="" onOn} \
      ~{true="-PN" false="" pnPn} \
      ~{true="-UN" false="" unUn} \
      ~{true="-lN" false="" lnLn} \
      ~{true="-mN" false="" mnMn} \
      ~{true="-nN" false="" nnNn} \
      ~{true="-uN" false="" unUn} \
      ~{true="-gS" false="" gsGs} \
      ~{true="-Sa" false="" saSa} \
      ~{true="-Sb" false="" sbSb} \
      ~{true="-Sc" false="" scSc} \
      ~{true="-Sr" false="" srSr}
  >>>
}