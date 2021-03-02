version 1.0

task Lr2genepl {
  input {
    String? control_sample_used
    String? mode
    Int? minimum_consecutive_amplicons
    Float? minimum_amplified_default
    Float? minimum_ratio_deleted
    Float? minimum_mean_log
    Float? when_considering_deletions
    Float? when_considering_deletionamplification
    Float? pvalue_when_are
    Float? when_minimum_number
    Float? when_minimum_differences
    Float? pvalue_when_is
    Float? breakpoint_detected_fraction
    Int? breakpoint_detected_samples
  }
  command <<<
    lr2gene_pl \
      ~{if defined(control_sample_used) then ("-c " +  '"' + control_sample_used + '"') else ""} \
      ~{if defined(mode) then ("-y " +  '"' + mode + '"') else ""} \
      ~{if defined(minimum_consecutive_amplicons) then ("-s " +  '"' + minimum_consecutive_amplicons + '"') else ""} \
      ~{if defined(minimum_amplified_default) then ("-A " +  '"' + minimum_amplified_default + '"') else ""} \
      ~{if defined(minimum_ratio_deleted) then ("-D " +  '"' + minimum_ratio_deleted + '"') else ""} \
      ~{if defined(minimum_mean_log) then ("-E " +  '"' + minimum_mean_log + '"') else ""} \
      ~{if defined(when_considering_deletions) then ("-M " +  '"' + when_considering_deletions + '"') else ""} \
      ~{if defined(when_considering_deletionamplification) then ("-d " +  '"' + when_considering_deletionamplification + '"') else ""} \
      ~{if defined(pvalue_when_are) then ("-p " +  '"' + pvalue_when_are + '"') else ""} \
      ~{if defined(when_minimum_number) then ("-e " +  '"' + when_minimum_number + '"') else ""} \
      ~{if defined(when_minimum_differences) then ("-t " +  '"' + when_minimum_differences + '"') else ""} \
      ~{if defined(pvalue_when_is) then ("-P " +  '"' + pvalue_when_is + '"') else ""} \
      ~{if defined(breakpoint_detected_fraction) then ("-R " +  '"' + breakpoint_detected_fraction + '"') else ""} \
      ~{if defined(breakpoint_detected_samples) then ("-N " +  '"' + breakpoint_detected_samples + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    control_sample_used: "that control sample is used for normalization"
    mode: "mode"
    minimum_consecutive_amplicons: "The minimum consecutive amplicons to look for deletions and amplifications.  Default: 1.  Use with caution\\nwhen it is less than 3.  There might be more false positives.  Though it has been successfully applied with\\noption \\\"-s 1\\\" and identified one-exon deletion of PTEN and TP53 that were confirmed by RNA-seq."
    minimum_amplified_default: "Minimum log2 ratio for a whole gene to be considered amplified.  Default: 1.50"
    minimum_ratio_deleted: "Minimum log2 ratio for a whole gene to be considered deleted.  Default: -2.00"
    minimum_mean_log: "Minimum mean log2 ratio difference for <3 exon deletion/amplification to be called.  Default: 1.25"
    when_considering_deletions: "When considering partial deletions less than 3 exons/amplicons, the minimum MAD value, in addition to -E,\\nbefore considering it to be amplified or deleted.  Default: 10"
    when_considering_deletionamplification: "When considering >=3 exons deletion/amplification within a gene, the minimum differences between the log2 of two segments.\\nDefault: 0.5"
    pvalue_when_are: "(0-1)\\nThe p-value for t-test when consecutive exons/amplicons are >= 3.  Default: 0.00001"
    when_minimum_number: "When considering breakpoint in the middle of a gene, the minimum number of exons.  Default: 5"
    when_minimum_differences: "When considering breakpoint in the middle of a gene, the minimum differences between the log2 of two segments.\\nDefault: 0.4"
    pvalue_when_is: "(0-1)\\nThe p-value for t-test when the breakpoint is in the middle with min exons/amplicons >= [-e].  Default: 0.000001"
    breakpoint_detected_fraction: "(0-1)\\nIf a breakpoint has been detected more than \\\"float\\\" fraction of samples, it is considered false positive and removed.\\nDefault: 0.03, or 3%.  Use in combination with -N"
    breakpoint_detected_samples: "If a breakpoint has been detected more than \\\"int\\\" samples, it is considered false positives and removed.\\nDefault: 5.  Use in combination with -R."
  }
  output {
    File out_stdout = stdout()
  }
}