version 1.0

task Vcfstats {
  input {
    Boolean? region
    Boolean? add_info
    Boolean? add_type
    Boolean? no_length_frequency
    String? match_score
    String? mismatch_score
    String? gap_open_penalty
    String? gap_extend_penalty
    String vcf_file
  }
  command <<<
    vcfstats \
      ~{vcf_file} \
      ~{true="--region" false="" region} \
      ~{true="--add-info" false="" add_info} \
      ~{true="--add-type" false="" add_type} \
      ~{true="--no-length-frequency" false="" no_length_frequency} \
      ~{if defined(match_score) then ("--match-score " +  '"' + match_score + '"') else ""} \
      ~{if defined(mismatch_score) then ("--mismatch-score " +  '"' + mismatch_score + '"') else ""} \
      ~{if defined(gap_open_penalty) then ("--gap-open-penalty " +  '"' + gap_open_penalty + '"') else ""} \
      ~{if defined(gap_extend_penalty) then ("--gap-extend-penalty " +  '"' + gap_extend_penalty + '"') else ""}
  >>>
  parameter_meta {
    region: "specify a region on which to target the stats, requires a BGZF compressed file which has been indexed with tabix.  any number of regions may be specified."
    add_info: "add the statistics intermediate information to the VCF file, writing out VCF records instead of summary statistics"
    add_type: "only add the type= field to the info (faster than -a)"
    no_length_frequency: "don't out the indel and mnp length-frequency spectra"
    match_score: "match score for SW algorithm"
    mismatch_score: "mismatch score for SW algorithm"
    gap_open_penalty: "gap open penalty for SW algorithm"
    gap_extend_penalty: "gap extension penalty for SW algorithm"
    vcf_file: ""
  }
}