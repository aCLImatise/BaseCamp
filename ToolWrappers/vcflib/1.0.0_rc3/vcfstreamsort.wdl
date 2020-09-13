version 1.0

task Vcfstreamsort {
  input {
    Int? window
    Boolean? all
    String? vcf
    File? file
  }
  command <<<
    vcfstreamsort \
      ~{vcf} \
      ~{file} \
      ~{if defined(window) then ("--window " +  '"' + window + '"') else ""} \
      ~{if (all) then "--all" else ""}
  >>>
  parameter_meta {
    window: "number of sites to sort (default 10000)"
    all: "load all sites and then sort in memory"
    vcf: ""
    file: ""
  }
  output {
    File out_stdout = stdout()
  }
}