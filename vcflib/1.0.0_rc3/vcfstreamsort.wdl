version 1.0

task Vcfstreamsort {
  input {
    String? window
    Boolean? all
    String? vcf
    File? file
  }
  command <<<
    vcfstreamsort \
      ~{vcf} \
      ~{file} \
      ~{if defined(window) then ("--window " +  '"' + window + '"') else ""} \
      ~{true="--all" false="" all}
  >>>
  parameter_meta {
    window: "number of sites to sort (default 10000)"
    all: "load all sites and then sort in memory"
    vcf: ""
    file: ""
  }
}