version 1.0

task SequanaVcfFilter {
  input {
    File? input_fastq_gzipped
    Int? quality
    Boolean? apply_in_del_filter
    Boolean? apply_dp_four_filter
    Boolean? apply_af_one_filter
    Int? minimum_af_one
    Float? minimum_ratio
    Int? minimum_depth
    Int? minimum_depth_strand
    String? filter
    String or
  }
  command <<<
    sequana_vcf_filter \
      ~{or} \
      ~{if defined(input_fastq_gzipped) then ("--input " +  '"' + input_fastq_gzipped + '"') else ""} \
      ~{if defined(quality) then ("--quality " +  '"' + quality + '"') else ""} \
      ~{if (apply_in_del_filter) then "--apply-indel-filter" else ""} \
      ~{if (apply_dp_four_filter) then "--apply-dp4-filter" else ""} \
      ~{if (apply_af_one_filter) then "--apply-af1-filter" else ""} \
      ~{if defined(minimum_af_one) then ("--minimum-af1 " +  '"' + minimum_af_one + '"') else ""} \
      ~{if defined(minimum_ratio) then ("--minimum-ratio " +  '"' + minimum_ratio + '"') else ""} \
      ~{if defined(minimum_depth) then ("--minimum-depth " +  '"' + minimum_depth + '"') else ""} \
      ~{if defined(minimum_depth_strand) then ("--minimum_depth-strand " +  '"' + minimum_depth_strand + '"') else ""} \
      ~{if defined(filter) then ("--filter " +  '"' + filter + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_fastq_gzipped: "input fastq gzipped or not (default: None)"
    quality: "filter sites below this quality (default: -1)"
    apply_in_del_filter: "remove INDELs (default: False)"
    apply_dp_four_filter: "apply DP4 filters. see online doc, vcf_filter section\\n(default: False)"
    apply_af_one_filter: "apply AF1 filters. see online doc, vcf_filter section\\n(default: False)"
    minimum_af_one: "default to 0.95 (default: 0.95)"
    minimum_ratio: "default to 0.75 (default: 0.75)"
    minimum_depth: "default to 4 (default: 4)"
    minimum_depth_strand: "default to 2 (default: 2)"
    filter: "Provide as many filters as you want. See example above\\n(default: [])"
    or: "DP>30&<60  # to keep only values in the range [30-60]"
  }
  output {
    File out_stdout = stdout()
  }
}