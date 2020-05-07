version 1.0

task B2w {
  input {
    Boolean wW
    Boolean iI
    Boolean mM
    Boolean xX
    Boolean cC
    Boolean dD
    String? inInBam
    String? inInFasta
    String? regionRegion
  }
  command <<<
    b2w \
      ~{inInBam} \
      ~{true="-w" false="" wW} \
      ~{true="-i" false="" iI} \
      ~{true="-m" false="" mM} \
      ~{true="-x" false="" xX} \
      ~{true="-c" false="" cC} \
      ~{true="-d" false="" dD} \
      ~{inInFasta} \
      ~{regionRegion}
  >>>
}