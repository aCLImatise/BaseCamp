version 1.0

task Vtoolsstats {
  input {
    File? input_vcf_file
  }
  command <<<
    vtools_stats \
      ~{if defined(input_vcf_file) then ("--input " +  '"' + input_vcf_file + '"') else ""}
  >>>
  parameter_meta {
    input_vcf_file: "Input VCF file  [required]"
  }
  output {
    File out_stdout = stdout()
  }
}