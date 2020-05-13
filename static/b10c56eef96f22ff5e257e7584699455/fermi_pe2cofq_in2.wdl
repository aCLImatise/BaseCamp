version 1.0

task FermiPe2cofqIn2.fq {
  input {
    String? in1fqIn1fq
    String? in2fqIn2fq
  }
  command <<<
    fermi pe2cofq in2.fq \
      ~{in1fqIn1fq} \
      ~{in2fqIn2fq}
  >>>
}