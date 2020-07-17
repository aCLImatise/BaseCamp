version 1.0

task FamSeq {
  input {
    String vcf
    String lk
  }
  command <<<
    FamSeq \
      ~{vcf} \
      ~{lk}
  >>>
  parameter_meta {
    vcf: "input vcf file"
    lk: "input likelihood file"
  }
}