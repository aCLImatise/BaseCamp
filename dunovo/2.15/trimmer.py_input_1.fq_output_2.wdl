version 1.0

task Trimmer.pyInput1.fqOutput2.fq {
  input {
    String? inputInput2fq
    String? outputOutput1fq
    String? outputOutput2fq
  }
  command <<<
    trimmer.py input_1.fq output_2.fq \
      ~{inputInput2fq} \
      ~{outputOutput1fq} \
      ~{outputOutput2fq}
  >>>
}