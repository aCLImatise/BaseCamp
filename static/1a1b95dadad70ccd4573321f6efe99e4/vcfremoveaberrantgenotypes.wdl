version 1.0

task Vcfremoveaberrantgenotypes {
  input {
    File vcf_file
  }
  command <<<
    vcfremoveaberrantgenotypes \
      ~{vcf_file}
  >>>
  parameter_meta {
    vcf_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}