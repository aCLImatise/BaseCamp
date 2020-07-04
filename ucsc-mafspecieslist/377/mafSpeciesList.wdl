version 1.0

task MafSpeciesList {
  input {
    Boolean? ignore_first
    String in_dot_maf
    String out_dot_lst
  }
  command <<<
    mafSpeciesList \
      ~{in_dot_maf} \
      ~{out_dot_lst} \
      ~{true="-ignoreFirst" false="" ignore_first}
  >>>
  parameter_meta {
    ignore_first: "- If true ignore first species in each maf, useful when this is a mafFrags result that puts gene id there."
    in_dot_maf: ""
    out_dot_lst: ""
  }
}