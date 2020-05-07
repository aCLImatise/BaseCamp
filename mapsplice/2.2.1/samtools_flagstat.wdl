version 1.0

task SamtoolsFlagstat {
  input {
    String? inInBam
  }
  command <<<
    samtools flagstat \
      ~{inInBam}
  >>>
}