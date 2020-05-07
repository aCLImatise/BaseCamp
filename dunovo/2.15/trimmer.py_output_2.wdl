version 1.0

task Trimmer.pyOutput2.fq {
  input {
    String? inputInput1fq
    String? inputInput2fq
    String? outputOutput1fq
    String? outputOutput2fq
  }
  command <<<
    trimmer.py output_2.fq \
      ~{inputInput1fq} \
      ~{inputInput2fq} \
      ~{outputOutput1fq} \
      ~{outputOutput2fq}
  >>>
}