version 1.0

task Vcfstreamsort {
  input {
    Int? window
    Boolean? all
    String? vcf
    File? var_file
  }
  command <<<
    vcfstreamsort \
      ~{vcf} \
      ~{var_file} \
      ~{if defined(window) then ("--window " +  '"' + window + '"') else ""} \
      ~{if (all) then "--all" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/vcflib:1.0.1--hd2e4403_1"
  }
  parameter_meta {
    window: "number of sites to sort (default 10000)"
    all: "load all sites and then sort in memory"
    vcf: ""
    var_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}