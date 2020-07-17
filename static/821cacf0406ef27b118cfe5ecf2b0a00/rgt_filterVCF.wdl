version 1.0

task RgtFilterVCF {
  input {
    String? t_mq
    String? t_dp
    String? dbsnp
    String? list_wt
    String? bed
    Boolean? max_density
    String? lower_bound
    String? upper_bound
  }
  command <<<
    rgt-filterVCF \
      ~{if defined(t_mq) then ("--t-mq " +  '"' + t_mq + '"') else ""} \
      ~{if defined(t_dp) then ("--t-dp " +  '"' + t_dp + '"') else ""} \
      ~{if defined(dbsnp) then ("--dbSNP " +  '"' + dbsnp + '"') else ""} \
      ~{if defined(list_wt) then ("--list-WT " +  '"' + list_wt + '"') else ""} \
      ~{if defined(bed) then ("--bed " +  '"' + bed + '"') else ""} \
      ~{true="--max-density" false="" max_density} \
      ~{if defined(lower_bound) then ("--lowerBound " +  '"' + lower_bound + '"') else ""} \
      ~{if defined(upper_bound) then ("--upperBound " +  '"' + upper_bound + '"') else ""}
  >>>
  parameter_meta {
    t_mq: "Threshold for mapping quality (MQ) [default: 20]"
    t_dp: "Threshold for combined depth (DP) [default: 20]"
    dbsnp: "Check for dbSNP [default: none]"
    list_wt: "List of WildTypes [default: none]"
    bed: "Filter against BED file (e.g. TFBS) [default: none]"
    max_density: "Perform max. density search [default: False]"
    lower_bound: "lower window bound for max. density search [default: 15000]"
    upper_bound: "upper window bound for max. density search [default: 30000]"
  }
}