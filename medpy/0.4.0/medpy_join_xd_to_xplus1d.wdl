version 1.0

task MedpyJoinXdToXplus1d.py {
  input {
    String sS
    String pP
    Boolean iI
    Boolean vV
    Boolean dD
    Boolean fF
    String? outputOutput
    String? inputsInputs
  }
  command <<<
    medpy_join_xd_to_xplus1d.py \
      ~{outputOutput} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{true="-i" false="" iI} \
      ~{true="-v" false="" vV} \
      ~{true="-d" false="" dD} \
      ~{true="-f" false="" fF} \
      ~{inputsInputs}
  >>>
}