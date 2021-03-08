version 1.0

task Vcfcombine {
  input {
    String? region
    String? vcf
    File? var_file
  }
  command <<<
    vcfcombine \
      ~{vcf} \
      ~{var_file} \
      ~{if defined(region) then ("--region " +  '"' + region + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/vcflib:1.0.2--hfbaaabd_0"
  }
  parameter_meta {
    region: "A region specifier of the form chrN:x-y to bound the merge"
    vcf: ""
    var_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}