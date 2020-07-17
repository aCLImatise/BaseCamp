version 1.0

task Vcfutils.plVcf2fq {
  input {
    Int? minimum_depth_
    Int? maximum_depth_
    Int? min_rms_mapq
    Int? indel_filtering_window
    Boolean? options
    Boolean? more_options
    String vcf_utils_do_tpl
  }
  command <<<
    vcfutils.pl vcf2fq \
      ~{vcf_utils_do_tpl} \
      ~{if defined(minimum_depth_) then ("-d " +  '"' + minimum_depth_ + '"') else ""} \
      ~{if defined(maximum_depth_) then ("-D " +  '"' + maximum_depth_ + '"') else ""} \
      ~{if defined(min_rms_mapq) then ("-Q " +  '"' + min_rms_mapq + '"') else ""} \
      ~{if defined(indel_filtering_window) then ("-l " +  '"' + indel_filtering_window + '"') else ""} \
      ~{true="-OPTIONS" false="" options} \
      ~{true="-MORE_OPTIONS" false="" more_options}
  >>>
  parameter_meta {
    minimum_depth_: "minimum depth          [3]"
    maximum_depth_: "maximum depth          [100000]"
    min_rms_mapq: "min RMS mapQ           [10]"
    indel_filtering_window: "INDEL filtering window [5]"
    options: ""
    more_options: ""
    vcf_utils_do_tpl: ""
  }
}