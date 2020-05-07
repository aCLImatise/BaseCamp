version 1.0

task SamtoolsIndex {
  input {
    String? inInBam
    String? outOutIndex
  }
  command <<<
    samtools index \
      ~{inInBam} \
      ~{outOutIndex}
  >>>
}