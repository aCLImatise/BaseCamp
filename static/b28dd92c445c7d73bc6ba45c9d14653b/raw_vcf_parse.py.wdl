version 1.0

task RawVcfParsepy {
  command <<<
    raw_vcf_parse_py
  >>>
  output {
    File out_stdout = stdout()
  }
}