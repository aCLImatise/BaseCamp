class: CommandLineTool
id: combineMUMs.cwl
inputs:
- id: in_only_output_stdout
  doc: "Only output to stdout the difference positions\nand characters"
  type: boolean
  inputBinding:
    prefix: -D
- id: in_allow_matches_only
  doc: Allow matches only between nucleotides, i.e., ACGTs
  type: boolean
  inputBinding:
    prefix: -n
- id: in_break_matches_nonacgts
  doc: Break matches at <num> or more consecutive non-ACGTs
  type: long
  inputBinding:
    prefix: -N
- id: in_used_label_query_match
  doc: Used to label query match
  type: string
  inputBinding:
    prefix: -q
- id: in_used_label_reference_match
  doc: Used to label reference match
  type: string
  inputBinding:
    prefix: -r
- id: in_output_differences_strings
  doc: Output all differences in strings
  type: boolean
  inputBinding:
    prefix: -S
- id: in_label_query_matches
  doc: Label query matches with query fasta header
  type: boolean
  inputBinding:
    prefix: -t
- id: in_set_verbose_level
  doc: Set verbose level for extra output
  type: long
  inputBinding:
    prefix: -v
- id: in_reset_filename_witherrorsgaps
  doc: Reset the default output filename witherrors.gaps
  type: File
  inputBinding:
    prefix: -W
- id: in_do_output_files
  doc: Don't output .cover files
  type: boolean
  inputBinding:
    prefix: -x
- id: in_set_errorrate_cutoff
  doc: Set error-rate cutoff to e (e.g. 0.02 is two percent)
  type: boolean
  inputBinding:
    prefix: -e
- id: in_ref_sequence
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_match_sequences
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_gaps_file
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_reset_filename_witherrorsgaps
  doc: Reset the default output filename witherrors.gaps
  type: File
  outputBinding:
    glob: $(inputs.in_reset_filename_witherrorsgaps)
cwlVersion: v1.1
baseCommand:
- combineMUMs
