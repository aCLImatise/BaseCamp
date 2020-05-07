version 1.0

task ProphyleAssignment.py {
  input {
    String fF
    String mM
    Boolean aA
    Boolean lL
    Boolean xX
    Boolean cC
  }
  command <<<
    prophyle_assignment.py \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{true="-A" false="" aA} \
      ~{true="-L" false="" lL} \
      ~{true="-X" false="" xX} \
      ~{true="-c" false="" cC}
  >>>
}