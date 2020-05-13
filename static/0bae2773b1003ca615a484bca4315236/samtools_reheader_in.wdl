version 1.0

task SamtoolsReheaderIn.bam {
  input {
    String? inInHeadersAm
    String? inInBam
  }
  command <<<
    samtools reheader in.bam \
      ~{inInHeadersAm} \
      ~{inInBam}
  >>>
}