version 1.0

task GsutilHelpSignurl {
  input {
    Boolean mM
    Boolean dD
    Boolean cC
    Boolean pP
  }
  command <<<
    gsutil help signurl \
      ~{true="-m" false="" mM} \
      ~{true="-d" false="" dD} \
      ~{true="-c" false="" cC} \
      ~{true="-p" false="" pP}
  >>>
}