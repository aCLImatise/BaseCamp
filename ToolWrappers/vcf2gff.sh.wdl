version 1.0

task Vcf2gffsh {
  input {
    String in
  }
  command <<<
    vcf2gff_sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
  output {
    File out_stdout = stdout()
  }
}