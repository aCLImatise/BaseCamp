class: CommandLineTool
id: tripaille_expression_add_expression.cwl
inputs:
- id: in_match_type
  doc: "Match to features using either name or\nuniquename. Default to uniquename\
    \  [default:\nuniquename]"
  type: string
  inputBinding:
    prefix: --match_type
- id: in_array_design_id
  doc: "The array design ID associated with this\nanalysis. (Non functional in Tripal2)"
  type: long
  inputBinding:
    prefix: --array_design_id
- id: in_quantification_units
  doc: "The units associated with the loaded values\n(ie, FPKM, RPKM, raw counts)."
  type: string
  inputBinding:
    prefix: --quantification_units
- id: in_file_extension
  doc: "File extension for the file(s) to be loaded\ninto Chado. Do not include the\
    \ \".\". Not\nrequired for matrix files."
  type: File
  inputBinding:
    prefix: --file_extension
- id: in_start_regex
  doc: "A regular expression to describe the line that\noccurs before the start of\
    \ the expression data.\nIf the file has no header, this is not needed."
  type: File
  inputBinding:
    prefix: --start_regex
- id: in_stop_regex
  doc: "A regular expression to describe the line that\noccurs after the end of the\
    \ expression data. If\nthe file has no footer text, this is not\nneeded."
  type: File
  inputBinding:
    prefix: --stop_regex
- id: in_seq_type
  doc: "Specify the feature type to associate the data\nwith. (Tripal3 only)"
  type: long
  inputBinding:
    prefix: --seq_type
- id: in_use_column
  doc: Set if the expression file is a column file
  type: boolean
  inputBinding:
    prefix: --use_column
- id: in_no_wait
  doc: Do not wait for job to complete
  type: boolean
  inputBinding:
    prefix: --no_wait
- id: in_file_path
  doc: Add an expression file to tripal
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- tripaille
- expression
- add_expression
