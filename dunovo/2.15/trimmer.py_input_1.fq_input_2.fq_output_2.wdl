version 1.0

task Trimmer.pyInput1.fqInput2.fqOutput2.fq {
  input {
    String? outputOutput1fq
    String? outputOutput2fq
  }
  command <<<
    trimmer.py input_1.fq input_2.fq output_2.fq \
      ~{outputOutput1fq} \
      ~{outputOutput2fq}
  >>>
}