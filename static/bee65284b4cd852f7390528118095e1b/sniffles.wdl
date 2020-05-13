version 1.0

task Sniffles {
  input {
    String ivcfIvcf
    String tmpTmpFile
    Boolean csCsString
    Float minMinHomoAf
    Float minMinHetAf
    Boolean reportReportBnd
    Boolean reportReportSeq
    Boolean ignoreIgnoreSd
    Boolean reportReportReadStrands
    Boolean ccsCcsReads
    Boolean skipSkipParameterEstimation
    Float delDelRatio
    Float insInsRatio
    Int maxMaxDiffPerWindow
    Int maxMaxDistAlnEvents
  }
  command <<<
    sniffles \
      ~{if defined(ivcfIvcf) then ("--Ivcf " +  '"' + ivcfIvcf + '"') else ""} \
      ~{if defined(tmpTmpFile) then ("--tmp_file " +  '"' + tmpTmpFile + '"') else ""} \
      ~{true="--cs_string" false="" csCsString} \
      ~{if defined(minMinHomoAf) then ("--min_homo_af " +  '"' + minMinHomoAf + '"') else ""} \
      ~{if defined(minMinHetAf) then ("--min_het_af " +  '"' + minMinHetAf + '"') else ""} \
      ~{true="--report_BND" false="" reportReportBnd} \
      ~{true="--report_seq" false="" reportReportSeq} \
      ~{true="--ignore_sd" false="" ignoreIgnoreSd} \
      ~{true="--report_read_strands" false="" reportReportReadStrands} \
      ~{true="--ccs_reads" false="" ccsCcsReads} \
      ~{true="--skip_parameter_estimation" false="" skipSkipParameterEstimation} \
      ~{if defined(delDelRatio) then ("--del_ratio " +  '"' + delDelRatio + '"') else ""} \
      ~{if defined(insInsRatio) then ("--ins_ratio " +  '"' + insInsRatio + '"') else ""} \
      ~{if defined(maxMaxDiffPerWindow) then ("--max_diff_per_window " +  '"' + maxMaxDiffPerWindow + '"') else ""} \
      ~{if defined(maxMaxDistAlnEvents) then ("--max_dist_aln_events " +  '"' + maxMaxDistAlnEvents + '"') else ""}
  >>>
}