version 1.0

task BpEinfo {
  input {
    Boolean eE
    Boolean dD
    Boolean fF
    Boolean lL
    Boolean oO
  }
  command <<<
    bp_einfo \
      ~{true="-e" false="" eE} \
      ~{true="-d" false="" dD} \
      ~{true="-f" false="" fF} \
      ~{true="-l" false="" lL} \
      ~{true="-o" false="" oO}
  >>>
}