version 1.0

task LofreqIndelqual {
  input {
    Boolean uU
    Boolean fF
    Boolean oO
    String? inInBam
  }
  command <<<
    lofreq indelqual \
      ~{inInBam} \
      ~{true="-u" false="" uU} \
      ~{true="-f" false="" fF} \
      ~{true="-o" false="" oO}
  >>>
}