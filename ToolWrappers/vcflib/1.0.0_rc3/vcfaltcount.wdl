version 1.0

task Vcfaltcount {
  input {
    File vcf_file
  }
  command <<<
    vcfaltcount \
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