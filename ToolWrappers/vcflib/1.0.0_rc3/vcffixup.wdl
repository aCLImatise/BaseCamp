version 1.0

task Vcffixup {
  input {
    File vcf_file
  }
  command <<<
    vcffixup \
      ~{vcf_file}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    vcf_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}