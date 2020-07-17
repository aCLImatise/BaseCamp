version 1.0

task SlivarDuoDel {
  input {
    String? ped
    String? g_notate
    Int? min_sites
    Int? min_size
    String? exclude
    Boolean? affected_only
    String sli_var
    String duo_del
    String? vcf
  }
  command <<<
    slivar duo-del \
      ~{sli_var} \
      ~{duo_del} \
      ~{vcf} \
      ~{if defined(ped) then ("--ped " +  '"' + ped + '"') else ""} \
      ~{if defined(g_notate) then ("--gnotate " +  '"' + g_notate + '"') else ""} \
      ~{if defined(min_sites) then ("--min-sites " +  '"' + min_sites + '"') else ""} \
      ~{if defined(min_size) then ("--min-size " +  '"' + min_size + '"') else ""} \
      ~{if defined(exclude) then ("--exclude " +  '"' + exclude + '"') else ""} \
      ~{true="--affected-only" false="" affected_only}
  >>>
  parameter_meta {
    ped: "required ped file describing the duos in the VCF"
    g_notate: "optional gnotate file to check for flagged variants to exclude"
    min_sites: "minimum number of variants required to define a region (use 1 to output all putative deletions) (default: 3)"
    min_size: "minimum size in base-pairs of a region (default: 50)"
    exclude: "path to BED file of exclude regions e.g. (LCRs or self-chains)"
    affected_only: "only output DEL calls for affected kids"
    sli_var: ""
    duo_del: ""
    vcf: ""
  }
}