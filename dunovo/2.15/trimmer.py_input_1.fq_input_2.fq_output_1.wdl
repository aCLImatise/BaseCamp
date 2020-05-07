version 1.0

task Trimmer.pyInput1.fqInput2.fqOutput1.fq {
  input {
    String? outputOutput2fq
  }
  command <<<
    trimmer.py input_1.fq input_2.fq output_1.fq \
      ~{outputOutput2fq}
  >>>
}