version 1.0

task Phytime {
  input {
    Boolean dD
    Boolean qQ
    Boolean mM
    Boolean tT
    Boolean vV
    Boolean cC
    Boolean aA
    Boolean uU
    Boolean quietQuiet
    Boolean fastFastLk
  }
  command <<<
    phytime \
      ~{true="-d" false="" dD} \
      ~{true="-q" false="" qQ} \
      ~{true="-m" false="" mM} \
      ~{true="-t" false="" tT} \
      ~{true="-v" false="" vV} \
      ~{true="-c" false="" cC} \
      ~{true="-a" false="" aA} \
      ~{true="-u" false="" uU} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{true="--fastlk" false="" fastFastLk}
  >>>
}