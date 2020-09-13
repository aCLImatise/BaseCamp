version 1.0

task Vcfcombine {
  input {
    String? region
    String? vcf
    File? file
  }
  command <<<
    vcfcombine \
      ~{vcf} \
      ~{file} \
      ~{if defined(region) then ("--region " +  '"' + region + '"') else ""}
  >>>
  parameter_meta {
    region: "A region specifier of the form chrN:x-y to bound the merge"
    vcf: ""
    file: ""
  }
  output {
    File out_stdout = stdout()
  }
}