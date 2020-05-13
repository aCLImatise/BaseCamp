version 1.0

task SamtoolsReheaderIn.header.sam {
  input {
    String? inInBam
  }
  command <<<
    samtools reheader in.header.sam \
      ~{inInBam}
  >>>
}