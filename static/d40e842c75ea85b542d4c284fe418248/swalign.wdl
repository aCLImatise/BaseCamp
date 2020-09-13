version 1.0

task Swalign {
  input {
    Int? match_score_default
    Int? mm
    Int? gap
    Int? gap_ext
    Float? gap_decay
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
      ~{if (global) then "-global" else ""} \
      ~{if (query) then "-query" else ""} \
      ~{if defined(summary) then ("-summary " +  '"' + summary + '"') else ""} \
      ~{if (use_region) then "-useregion" else ""}
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
  output {
    File out_stdout = stdout()
  }
}