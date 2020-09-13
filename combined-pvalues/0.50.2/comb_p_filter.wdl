version 1.0

task CombpFilter {
  input {
    String? pvalue_column_from
    String? tstatistic_or_directionality
    String? coef
    Boolean? filter
    Int? max_p
    String? region_p
    String region_bed
    String p_bed
  }
  command <<<
    comb_p filter \
      ~{region_bed} \
      ~{p_bed} \
      ~{if defined(pvalue_column_from) then ("-p " +  '"' + pvalue_column_from + '"') else ""} \
      ~{if defined(tstatistic_or_directionality) then ("-t " +  '"' + tstatistic_or_directionality + '"') else ""} \
      ~{if defined(coef) then ("--coef " +  '"' + coef + '"') else ""} \
      ~{if (filter) then "--filter" else ""} \
      ~{if defined(max_p) then ("--max-p " +  '"' + max_p + '"') else ""} \
      ~{if defined(region_p) then ("--region-p " +  '"' + region_p + '"') else ""}
  >>>
  parameter_meta {
    pvalue_column_from: "p-value column from `p_bed`"
    tstatistic_or_directionality: "t-statistic or directionality from p_bed"
    coef: "name of coefficient column in BED"
    filter: "don't print row if there's a swith in t-scores"
    max_p: "filter regions with any p-value > this value"
    region_p: "filter regions with combined p-value > this value"
    region_bed: "file containing the regions"
    p_bed: "file containing the raw p-values"
  }
  output {
    File out_stdout = stdout()
  }
}