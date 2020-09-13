version 1.0

task TagBam {
  input {
    Boolean? require_overlaps_same
    Boolean? require_overlaps_opposite
    Boolean? minimum_overlap_required
    Boolean? dictate_what_tag
    Boolean? names
    String? scores
    Boolean? intervals
    Array[String] labels
    Array[File] files
    String? i
    String bed_tools
    String var_11
  }
  command <<<
    tagBam \
      ~{bed_tools} \
      ~{var_11} \
      ~{if (require_overlaps_same) then "-s" else ""} \
      ~{if (require_overlaps_opposite) then "-S" else ""} \
      ~{if (minimum_overlap_required) then "-f" else ""} \
      ~{if (dictate_what_tag) then "-tag" else ""} \
      ~{if (names) then "-names" else ""} \
      ~{if defined(scores) then ("-scores " +  '"' + scores + '"') else ""} \
      ~{if (intervals) then "-intervals" else ""} \
      ~{if defined(labels) then ("-labels " +  '"' + labels + '"') else ""} \
      ~{if defined(files) then ("-files " +  '"' + files + '"') else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
  parameter_meta {
    require_overlaps_same: "Require overlaps on the same strand.  That is, only tag alignments that have the same\\nstrand as a feature in the annotation file(s)."
    require_overlaps_opposite: "Require overlaps on the opposite strand.  That is, only tag alignments that have the opposite\\nstrand as a feature in the annotation file(s)."
    minimum_overlap_required: "Minimum overlap required as a fraction of the alignment.\\n- Default is 1E-9 (i.e., 1bp).\\n- FLOAT (e.g. 0.50)"
    dictate_what_tag: "Dictate what the tag should be. Default is YB.\\n- STRING (two characters, e.g., YK)"
    names: "Use the name field from the annotation files to populate tags.\\nBy default, the -labels values are used."
    scores: "the score field from the annotation files to populate tags.\\nBy default, the -labels values are used."
    intervals: "Use the full interval (including name, score, and strand) to populate tags.\\nRequires the -labels option to identify from which file the interval came.\\n"
    labels: ""
    files: ""
    i: ""
    bed_tools: ""
    var_11: ""
  }
  output {
    File out_stdout = stdout()
  }
}