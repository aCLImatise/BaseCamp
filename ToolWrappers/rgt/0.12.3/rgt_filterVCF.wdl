version 1.0

task RgtfilterVCF {
  input {
    Int? t_mq
    Int? t_dp
    String? dbsnp
    String? list_wt
    File? bed
    Boolean? max_density
    Int? lower_bound
    Int? upper_bound
  }
  command <<<
    rgt_filterVCF \
      ~{if defined(t_mq) then ("--t-mq " +  '"' + t_mq + '"') else ""} \
      ~{if defined(t_dp) then ("--t-dp " +  '"' + t_dp + '"') else ""} \
      ~{if defined(dbsnp) then ("--dbSNP " +  '"' + dbsnp + '"') else ""} \
      ~{if defined(list_wt) then ("--list-WT " +  '"' + list_wt + '"') else ""} \
      ~{if defined(bed) then ("--bed " +  '"' + bed + '"') else ""} \
      ~{if (max_density) then "--max-density" else ""} \
      ~{if defined(lower_bound) then ("--lowerBound " +  '"' + lower_bound + '"') else ""} \
      ~{if defined(upper_bound) then ("--upperBound " +  '"' + upper_bound + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    t_mq: "Threshold for mapping quality (MQ) [default: 20]"
    t_dp: "Threshold for combined depth (DP) [default: 20]"
    dbsnp: "Check for dbSNP [default: none]"
    list_wt: "List of WildTypes [default: none]"
    bed: "Filter against BED file (e.g. TFBS) [default: none]"
    max_density: "Perform max. density search [default: False]"
    lower_bound: "lower window bound for max. density search [default:\\n15000]"
    upper_bound: "upper window bound for max. density search [default:\\n30000]\\n"
  }
  output {
    File out_stdout = stdout()
  }
}