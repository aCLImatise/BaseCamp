version 1.0

task BedtoolsAnnotate {
  input {
    Boolean? both
    Boolean? require_same_strandedness
    Boolean? require_different_strandedness
    String? i
    File? files
    File file_two_dot_dotfile_n
  }
  command <<<
    bedtools annotate \
      ~{file_two_dot_dotfile_n} \
      ~{true="-both" false="" both} \
      ~{true="-s" false="" require_same_strandedness} \
      ~{true="-S" false="" require_different_strandedness} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if defined(files) then ("-files " +  '"' + files + '"') else ""}
  >>>
  parameter_meta {
    both: "Report the counts followed by the % coverage. - Default is to report the fraction of -i covered by each file."
    require_same_strandedness: "Require same strandedness.  That is, only counts overlaps on the _same_ strand. - By default, overlaps are counted without respect to strand."
    require_different_strandedness: "Require different strandedness.  That is, only count overlaps on the _opposite_ strand. - By default, overlaps are counted without respect to strand."
    i: ""
    files: ""
    file_two_dot_dotfile_n: ""
  }
}