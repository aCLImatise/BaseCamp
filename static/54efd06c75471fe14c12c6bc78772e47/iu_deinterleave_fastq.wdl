version 1.0

task IuDeinterleaveFastq {
  input {
    String? inputInput
  }
  command <<<
    iu-deinterleave-fastq \
      ~{inputInput}
  >>>
}