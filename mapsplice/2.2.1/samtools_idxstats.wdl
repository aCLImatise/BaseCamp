version 1.0

task SamtoolsIdxstats {
  input {
    String? inInBam
  }
  command <<<
    samtools idxstats \
      ~{inInBam}
  >>>
}