version 1.0

task VcfExtractSite {
  input {
    Boolean? site
    Boolean? snp_only
  }
  command <<<
    vcfExtractSite \
      ~{if (site) then "--site" else ""} \
      ~{if (snp_only) then "--snpOnly" else ""}
  >>>
  parameter_meta {
    site: "[], --inverse, --rangeList [], --rangeFile []"
    snp_only: ""
  }
  output {
    File out_stdout = stdout()
  }
}