version 1.0

task GsutilHelpOptions {
  input {
    Boolean dD
    Boolean ddDd
    Boolean mM
    Boolean oO
    Boolean qQ
  }
  command <<<
    gsutil help options \
      ~{true="-D" false="" dD} \
      ~{true="-DD" false="" ddDd} \
      ~{true="-m" false="" mM} \
      ~{true="-o" false="" oO} \
      ~{true="-q" false="" qQ}
  >>>
}