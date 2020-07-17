version 1.0

task VtoolsStats {
  input {
    File? input_vcf_file
  }
  command <<<
    vtools-stats \
      ~{if defined(input_vcf_file) then ("--input " +  '"' + input_vcf_file + '"') else ""}
  >>>
  parameter_meta {
    input_vcf_file: "Input VCF file  [required]"
  }
}