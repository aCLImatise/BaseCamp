version 1.0

task GenomeComplexityFast {
  input {
    String fF
    String kK
    Boolean cC
    Boolean eE
    Boolean cC
    Boolean pP
    Boolean dD
    String dD
    Boolean sS
  }
  command <<<
    genome-complexity-fast \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{if defined(kK) then ("-k " +  '"' + kK + '"') else ""} \
      ~{true="-c" false="" cC} \
      ~{true="-e" false="" eE} \
      ~{true="-C" false="" cC} \
      ~{true="-p" false="" pP} \
      ~{true="-d" false="" dD} \
      ~{if defined(dD) then ("-D " +  '"' + dD + '"') else ""} \
      ~{true="-S" false="" sS}
  >>>
}