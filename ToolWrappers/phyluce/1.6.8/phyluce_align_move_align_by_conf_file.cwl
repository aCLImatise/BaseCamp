class: CommandLineTool
id: phyluce_align_move_align_by_conf_file.cwl
inputs:
- id: in_conf
  doc: The configuration file giving locus names
  type: File?
  inputBinding:
    prefix: --conf
- id: in_alignments
  doc: The input directory for the alignments
  type: Directory?
  inputBinding:
    prefix: --alignments
- id: in_output
  doc: The output directory for the alignments
  type: Directory?
  inputBinding:
    prefix: --output
- id: in_sections
  doc: "The sections of files to use as a filter (defaults to\nall)"
  type: string[]
  inputBinding:
    prefix: --sections
- id: in_opposite
  doc: Move alignments based on what is NOT in the conf file
  type: boolean?
  inputBinding:
    prefix: --opposite
- id: in_extension
  doc: "The extension of the files to move\n"
  type: string?
  inputBinding:
    prefix: --extension
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: The output directory for the alignments
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- phyluce_align_move_align_by_conf_file
