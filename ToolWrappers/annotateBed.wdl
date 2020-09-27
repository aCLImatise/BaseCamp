version 1.0

task AnnotateBed {
  input {
    Boolean? names
    File? counts
    Boolean? both
    Boolean? require_same_strandedness
    Boolean? require_different_strandedness
    File? files
    String? i
    String bed_tools
    String annotate
    Int file_two_dot_dotfile_n
  }
  command <<<
    annotateBed \
      ~{bed_tools} \
      ~{annotate} \
      ~{file_two_dot_dotfile_n} \
      ~{if (names) then "-names" else ""} \
      ~{if defined(counts) then ("-counts " +  '"' + counts + '"') else ""} \
      ~{if (both) then "-both" else ""} \
      ~{if (require_same_strandedness) then "-s" else ""} \
      ~{if (require_different_strandedness) then "-S" else ""} \
      ~{if defined(files) then ("-files " +  '"' + files + '"') else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
  parameter_meta {
    names: "A list of names (one / file) to describe each file in -i.\\nThese names will be printed as a header line."
    counts: "the count of features in each file that overlap -i.\\n- Default is to report the fraction of -i covered by each file."
    both: "Report the counts followed by the % coverage.\\n- Default is to report the fraction of -i covered by each file."
    require_same_strandedness: "Require same strandedness.  That is, only counts overlaps\\non the _same_ strand.\\n- By default, overlaps are counted without respect to strand."
    require_different_strandedness: "Require different strandedness.  That is, only count overlaps\\non the _opposite_ strand.\\n- By default, overlaps are counted without respect to strand.\\n"
    files: ""
    i: ""
    bed_tools: ""
    annotate: ""
    file_two_dot_dotfile_n: ""
  }
  output {
    File out_stdout = stdout()
  }
}