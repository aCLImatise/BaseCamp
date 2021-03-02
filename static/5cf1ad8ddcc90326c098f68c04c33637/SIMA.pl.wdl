version 1.0

task SIMApl {
  input {
    File? domains_perform_analysis
    Int? features_check_enrichment
    Boolean? res
    Boolean? window
    Boolean? mind_ist
    Boolean? mind_size
    Boolean? min
    Boolean? max
    String? chr
    Int? p_two
    Boolean? avs_a
    Boolean? number_randomizations_domain
    Boolean? r_depth
    Boolean? cpu
    Boolean? merge
    String? stat
    Boolean? p_value
    Boolean? min_peaks
    String? d_name
    Int? d_name_two
  }
  command <<<
    SIMA_pl \
      ~{if defined(domains_perform_analysis) then ("-d " +  '"' + domains_perform_analysis + '"') else ""} \
      ~{if defined(features_check_enrichment) then ("-p " +  '"' + features_check_enrichment + '"') else ""} \
      ~{if (res) then "-res" else ""} \
      ~{if (window) then "-window" else ""} \
      ~{if (mind_ist) then "-minDist" else ""} \
      ~{if (mind_size) then "-minDsize" else ""} \
      ~{if (min) then "-min" else ""} \
      ~{if (max) then "-max" else ""} \
      ~{if defined(chr) then ("-chr " +  '"' + chr + '"') else ""} \
      ~{if defined(p_two) then ("-p2 " +  '"' + p_two + '"') else ""} \
      ~{if (avs_a) then "-AvsA" else ""} \
      ~{if (number_randomizations_domain) then "-N" else ""} \
      ~{if (r_depth) then "-rdepth" else ""} \
      ~{if (cpu) then "-cpu" else ""} \
      ~{if (merge) then "-merge" else ""} \
      ~{if defined(stat) then ("-stat " +  '"' + stat + '"') else ""} \
      ~{if (p_value) then "-pvalue" else ""} \
      ~{if (min_peaks) then "-minPeaks" else ""} \
      ~{if defined(d_name) then ("-dname " +  '"' + d_name + '"') else ""} \
      ~{if defined(d_name_two) then ("-dname2 " +  '"' + d_name_two + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    domains_perform_analysis: "(Domains to perform analysis on)"
    features_check_enrichment: "[peak file2] ... (features to check for enrichment)"
    res: "<#> (resolution, default=2500)"
    window: "<#> (super resolution/window size, default=10000)"
    mind_ist: "<#> (minimum interaction read distance, default: 2x superRes)"
    mind_size: "<#> (minimum domain size, default: 500000)"
    min: "<#> (minimum distance between domains to test significance, default=-1)"
    max: "<#> (maximum distance, set to -1 to allow inter-chr, default=1e9)"
    chr: "(only analyze this chromosome, default: all)"
    p_two: "[peak file2] ... (heterogenous peak enrichments)"
    avs_a: "(All versus All, compare -p peaks against one another)"
    number_randomizations_domain: "<#> (Number of randomizations per domain, default: 1000)"
    r_depth: "(adjust randomization based on HiC read depth)"
    cpu: "<#> (number of CPUs to use for analysis, default: 1)"
    merge: "(merge results for all domains)"
    stat: "(output stat for matrix mode, default: ratio)"
    p_value: "<#> (p-value cutoff to report the ratio, default: 0.01)"
    min_peaks: "<#> (minimum number of peaks, default: none)"
    d_name: "(domain name to show)"
    d_name_two: "(domain name to show, if different)"
  }
  output {
    File out_stdout = stdout()
  }
}