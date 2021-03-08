version 1.0

task Vcfremap {
  input {
    Int? ref_window_size
    Int? alt_window_size
    File? reference
    String? match_score
    String? mismatch_score
    String? gap_open_penalty
    String? gap_extend_penalty
    Boolean? entropy_gap_open
    String? repeat_gap_extend
    String? adjust_vcf
    File? vcf_file
  }
  command <<<
    vcfremap \
      ~{vcf_file} \
      ~{if defined(ref_window_size) then ("--ref-window-size " +  '"' + ref_window_size + '"') else ""} \
      ~{if defined(alt_window_size) then ("--alt-window-size " +  '"' + alt_window_size + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(match_score) then ("--match-score " +  '"' + match_score + '"') else ""} \
      ~{if defined(mismatch_score) then ("--mismatch-score " +  '"' + mismatch_score + '"') else ""} \
      ~{if defined(gap_open_penalty) then ("--gap-open-penalty " +  '"' + gap_open_penalty + '"') else ""} \
      ~{if defined(gap_extend_penalty) then ("--gap-extend-penalty " +  '"' + gap_extend_penalty + '"') else ""} \
      ~{if (entropy_gap_open) then "--entropy-gap-open" else ""} \
      ~{if defined(repeat_gap_extend) then ("--repeat-gap-extend " +  '"' + repeat_gap_extend + '"') else ""} \
      ~{if defined(adjust_vcf) then ("--adjust-vcf " +  '"' + adjust_vcf + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/vcflib:1.0.2--hfbaaabd_0"
  }
  parameter_meta {
    ref_window_size: "align using this many bases flanking each side of the reference allele"
    alt_window_size: "align using this many flanking bases from the reference around each alternate allele"
    reference: "FASTA reference file, required with -i and -u"
    match_score: "match score for SW algorithm"
    mismatch_score: "mismatch score for SW algorithm"
    gap_open_penalty: "gap open penalty for SW algorithm"
    gap_extend_penalty: "gap extension penalty for SW algorithm"
    entropy_gap_open: "use entropy scaling for the gap open penalty"
    repeat_gap_extend: "penalize non-repeat-unit gaps in repeat sequence"
    adjust_vcf: "supply a new cigar as TAG in the output VCF"
    vcf_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}