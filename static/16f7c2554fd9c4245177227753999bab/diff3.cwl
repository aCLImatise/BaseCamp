class: CommandLineTool
id: diff3.cwl
inputs:
- id: in_show_all
  doc: output all changes, bracketing conflicts
  type: boolean?
  inputBinding:
    prefix: --show-all
- id: in_ed
  doc: "output ed script incorporating changes\nfrom OLDFILE to YOURFILE into MYFILE"
  type: boolean?
  inputBinding:
    prefix: --ed
- id: in_show_overlap
  doc: like -e, but bracket conflicts
  type: boolean?
  inputBinding:
    prefix: --show-overlap
- id: in_easy_only
  doc: like -e, but incorporate only nonoverlapping changes
  type: boolean?
  inputBinding:
    prefix: --easy-only
- id: in_overlap_only
  doc: like -e, but incorporate only overlapping changes
  type: boolean?
  inputBinding:
    prefix: --overlap-only
- id: in_like_bracket_conflicts
  doc: like -x, but bracket conflicts
  type: boolean?
  inputBinding:
    prefix: -X
- id: in_append_commands_ed
  doc: append 'w' and 'q' commands to ed scripts
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_merge
  doc: output actual merged file, according to
  type: File?
  inputBinding:
    prefix: --merge
- id: in_text
  doc: treat all files as text
  type: boolean?
  inputBinding:
    prefix: --text
- id: in_strip_trailing_cr
  doc: strip trailing carriage return on input
  type: boolean?
  inputBinding:
    prefix: --strip-trailing-cr
- id: in_initial_tab
  doc: make tabs line up by prepending a tab
  type: boolean?
  inputBinding:
    prefix: --initial-tab
- id: in_diff_program
  doc: use PROGRAM to compare files
  type: string?
  inputBinding:
    prefix: --diff-program
- id: in_label
  doc: "use LABEL instead of file name\n(can be repeated up to three times)"
  type: File?
  inputBinding:
    prefix: --label
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_merge
  doc: output actual merged file, according to
  type: File?
  outputBinding:
    glob: $(inputs.in_merge)
hints: []
cwlVersion: v1.1
baseCommand:
- diff3
