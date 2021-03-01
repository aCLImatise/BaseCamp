version 1.0

task RawVcfParsepy {
  command <<<
    raw_vcf_parse_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}