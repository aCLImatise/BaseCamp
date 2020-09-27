class: CommandLineTool
id: msstitch_conffilt.cwl
inputs:
- id: in_input_file_format
  doc: Input file of {} format
  type: File
  inputBinding:
    prefix: -i
- id: in_directory_to_output
  doc: Directory to output in
  type: Directory
  inputBinding:
    prefix: -d
- id: in_output_file
  doc: Output file
  type: File
  inputBinding:
    prefix: -o
- id: in_confidence_col
  doc: "Confidence column number or name in the tsv file.\nFirst column has number\
    \ 1."
  type: long
  inputBinding:
    prefix: --confidence-col
- id: in_conf_col_pattern
  doc: "Text pattern to identify column in table on which\nconfidence filtering should\
    \ be done. Use in case of\nnot using standard {} column"
  type: string
  inputBinding:
    prefix: --confcolpattern
- id: in_confidence_lvl
  doc: Confidence cutoff level as a floating point number
  type: long
  inputBinding:
    prefix: --confidence-lvl
- id: in_confidence_better
  doc: "Confidence type to define if higher or lower score is\nbetter. One of [higher,\
    \ lower]"
  type: string
  inputBinding:
    prefix: --confidence-better
- id: in_unroll
  doc: "PSM table from Mzid2TSV contains either one PSM per\nline with all the proteins\
    \ of that shared peptide on\nthe same line (not unrolled, default), or one\nPSM/protein\
    \ match per line where each protein from\nthat shared peptide gets its own line\
    \ (unrolled).\n"
  type: boolean
  inputBinding:
    prefix: --unroll
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_directory_to_output
  doc: Directory to output in
  type: Directory
  outputBinding:
    glob: $(inputs.in_directory_to_output)
- id: out_output_file
  doc: Output file
  type: File
  outputBinding:
    glob: $(inputs.in_output_file)
cwlVersion: v1.1
baseCommand:
- msstitch
- conffilt
