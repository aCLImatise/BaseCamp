version 1.0

task SampleAncestry {
  input {
    File? in
    File? out
    Int? min_snps
    Float? pop_dist
    Int? build
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
      ~{if (changelog) then "--changelog" else ""} \
      ~{if (tdx) then "--tdx" else ""}
  >>>
  parameter_meta {
    in: "Input variant list(s) in VCF format."
    out: "Output TSV file. If unset, writes to STDOUT.\\nDefault value: ''"
    min_snps: "Minimum number of informative SNPs for population determination. If less SNPs are found, 'NOT_ENOUGH_SNPS' is returned.\\nDefault value: '1000'"
    pop_dist: "Minimum relative distance between first/second population score. If below this score 'ADMIXED/UNKNOWN' is called.\\nDefault value: '0.15'"
    build: "Genome build used to generate the input.\\nDefault value: 'hg19'\\nValid: 'hg19,hg38'"
    changelog: "Prints changeloge and exits."
    tdx: "Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}