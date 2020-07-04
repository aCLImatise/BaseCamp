version 1.0

task Swalign {
  input {
    String? match_score_default
    String? mm
    String? gap
    String? gap_ext
    String? gap_decay
    String? wrap
    Boolean? global
    Boolean? query
    String? summary
    Boolean? use_region
  }
  command <<<
    swalign \
      ~{if defined(match_score_default) then ("-m " +  '"' + match_score_default + '"') else ""} \
      ~{if defined(mm) then ("-mm " +  '"' + mm + '"') else ""} \
      ~{if defined(gap) then ("-gap " +  '"' + gap + '"') else ""} \
      ~{if defined(gap_ext) then ("-gapext " +  '"' + gap_ext + '"') else ""} \
      ~{if defined(gap_decay) then ("-gapdecay " +  '"' + gap_decay + '"') else ""} \
      ~{if defined(wrap) then ("-wrap " +  '"' + wrap + '"') else ""} \
      ~{true="-global" false="" global} \
      ~{true="-query" false="" query} \
      ~{if defined(summary) then ("-summary " +  '"' + summary + '"') else ""} \
      ~{true="-useregion" false="" use_region}
  >>>
  parameter_meta {
    match_score_default: "Match score (default: 2)"
    mm: "Mismatch penalty (default: 1)"
    gap: "Gap penalty (default: 1)"
    gap_ext: "Gap extension penalty (default: 1)"
    gap_decay: "Decay the gap extension penalty (default: 0.0)"
    wrap: "Wrap alignments when they are longer than N bases"
    global: "Perform a global alignment (experimental)"
    query: "Align the full query sequence (mix of local/global)"
    summary: "Write a summary files of match locations (tab-delimited)"
    use_region: "Use regions for coordinates if included in FASTA ref"
  }
}