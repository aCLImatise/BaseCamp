version 1.0

task FermiPe2cofqIn1.fq {
  input {
    String? in2fqIn2fq
  }
  command <<<
    fermi pe2cofq in1.fq \
      ~{in2fqIn2fq}
  >>>
}