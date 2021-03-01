version 1.0

task Diff3 {
  input {
    Boolean? show_all
    Boolean? ed
    Boolean? show_overlap
    Boolean? easy_only
    Boolean? overlap_only
    Boolean? like_bracket_conflicts
    Boolean? append_commands_ed
    File? merge
    Boolean? text
    Boolean? strip_trailing_cr
    Boolean? initial_tab
    String? diff_program
    File? label
  }
  command <<<
    diff3 \
      ~{if (show_all) then "--show-all" else ""} \
      ~{if (ed) then "--ed" else ""} \
      ~{if (show_overlap) then "--show-overlap" else ""} \
      ~{if (easy_only) then "--easy-only" else ""} \
      ~{if (overlap_only) then "--overlap-only" else ""} \
      ~{if (like_bracket_conflicts) then "-X" else ""} \
      ~{if (append_commands_ed) then "-i" else ""} \
      ~{if (merge) then "--merge" else ""} \
      ~{if (text) then "--text" else ""} \
      ~{if (strip_trailing_cr) then "--strip-trailing-cr" else ""} \
      ~{if (initial_tab) then "--initial-tab" else ""} \
      ~{if defined(diff_program) then ("--diff-program " +  '"' + diff_program + '"') else ""} \
      ~{if defined(label) then ("--label " +  '"' + label + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    show_all: "output all changes, bracketing conflicts"
    ed: "output ed script incorporating changes\\nfrom OLDFILE to YOURFILE into MYFILE"
    show_overlap: "like -e, but bracket conflicts"
    easy_only: "like -e, but incorporate only nonoverlapping changes"
    overlap_only: "like -e, but incorporate only overlapping changes"
    like_bracket_conflicts: "like -x, but bracket conflicts"
    append_commands_ed: "append 'w' and 'q' commands to ed scripts"
    merge: "output actual merged file, according to"
    text: "treat all files as text"
    strip_trailing_cr: "strip trailing carriage return on input"
    initial_tab: "make tabs line up by prepending a tab"
    diff_program: "use PROGRAM to compare files"
    label: "use LABEL instead of file name\\n(can be repeated up to three times)"
  }
  output {
    File out_stdout = stdout()
    File out_merge = "${in_merge}"
  }
}