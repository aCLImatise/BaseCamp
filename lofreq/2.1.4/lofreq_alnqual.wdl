version 1.0

task LofreqAlnqual {
  input {
    Boolean bB
    Boolean uU
    Boolean sS
    Boolean eE
    Boolean bB
    Boolean aA
    Boolean rR
    String? aALnbAm
    String? refRefFastA
  }
  command <<<
    lofreq alnqual \
      ~{aALnbAm} \
      ~{true="-b" false="" bB} \
      ~{true="-u" false="" uU} \
      ~{true="-S" false="" sS} \
      ~{true="-e" false="" eE} \
      ~{true="-B" false="" bB} \
      ~{true="-A" false="" aA} \
      ~{true="-r" false="" rR} \
      ~{refRefFastA}
  >>>
}