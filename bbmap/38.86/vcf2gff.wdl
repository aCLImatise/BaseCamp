version 1.0

task Vcf2gff.sh {
  input {
    String in
  }
  command <<<
    vcf2gff.sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
}