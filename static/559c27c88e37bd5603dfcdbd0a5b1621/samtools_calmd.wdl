version 1.0

task SamtoolsCalmd {
  input {
    Boolean eE
    Boolean uU
    Boolean bB
    Boolean sS
    Boolean rR
    String? fillFillMd
    String? aALnbAm
    String? refRefFastA
  }
  command <<<
    samtools calmd \
      ~{fillFillMd} \
      ~{true="-e" false="" eE} \
      ~{true="-u" false="" uU} \
      ~{true="-b" false="" bB} \
      ~{true="-S" false="" sS} \
      ~{true="-r" false="" rR} \
      ~{aALnbAm} \
      ~{refRefFastA}
  >>>
}