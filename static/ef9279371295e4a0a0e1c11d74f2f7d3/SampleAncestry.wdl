version 1.0

task SampleAncestry {
  input {
    File? in
    File? out
    Int? min_snps
    Float? pop_dist
    String? build
    Boolean? changelog
    Boolean? tdx
  }
  command <<<
    SampleAncestry \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(min_snps) then ("-min_snps " +  '"' + min_snps + '"') else ""} \
      ~{if defined(pop_dist) then ("-pop_dist " +  '"' + pop_dist + '"') else ""} \
      ~{if defined(build) then ("-build " +  '"' + build + '"') else ""} \
      ~{true="--changelog" false="" changelog} \
      ~{true="--tdx" false="" tdx}
  >>>
  parameter_meta {
    in: "Input variant list(s) in VCF format."
    out: "Output TSV file. If unset, writes to STDOUT. Default value: ''"
    min_snps: "Minimum number of informative SNPs for population determination. If less SNPs are found, 'NOT_ENOUGH_SNPS' is returned. Default value: '1000'"
    pop_dist: "Minimum relative distance between first/second population score. If below this score 'ADMIXED/UNKNOWN' is called. Default value: '0.15'"
    build: "Genome build used to generate the input. Default value: 'hg19' Valid: 'hg19,hg38'"
    changelog: "Prints changeloge and exits."
    tdx: "Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."
  }
}