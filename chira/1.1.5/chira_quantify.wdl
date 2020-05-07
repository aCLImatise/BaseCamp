version 1.0

task ChiraQuantify.py {
  input {
    Boolean bB
    Boolean mM
    Boolean oO
    Boolean csCs
    Boolean lsLs
    Boolean eE
    Boolean createCreateCrlsToo
  }
  command <<<
    chira_quantify.py \
      ~{true="-b" false="" bB} \
      ~{true="-m" false="" mM} \
      ~{true="-o" false="" oO} \
      ~{true="-cs" false="" csCs} \
      ~{true="-ls" false="" lsLs} \
      ~{true="-e" false="" eE} \
      ~{true="--create_crls_too" false="" createCreateCrlsToo}
  >>>
}