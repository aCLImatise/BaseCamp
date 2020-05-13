class: CommandLineTool
id: tripaille_expression_add_expression.cwl
inputs:
- id: match_type
  doc: 'Match to features using either name or uniquename. Default to uniquename  [default:
    uniquename]'
  type: string
  inputBinding:
    prefix: --match_type
- id: array_design_id
  doc: The array design ID associated with this analysis. (Non functional in Tripal2)
  type: string
  inputBinding:
    prefix: --array_design_id
- id: quantification_units
  doc: The units associated with the loaded values (ie, FPKM, RPKM, raw counts).
  type: string
  inputBinding:
    prefix: --quantification_units
- id: file_extension
  doc: File extension for the file(s) to be loaded into Chado. Do not include the
    ".". Not required for matrix files.
  type: string
  inputBinding:
    prefix: --file_extension
- id: start_regex
  doc: A regular expression to describe the line that occurs before the start of the
    expression data. If the file has no header, this is not needed.
  type: string
  inputBinding:
    prefix: --start_regex
- id: stop_regex
  doc: A regular expression to describe the line that occurs after the end of the
    expression data. If the file has no footer text, this is not needed.
  type: string
  inputBinding:
    prefix: --stop_regex
- id: seq_type
  doc: Specify the feature type to associate the data with. (Tripal3 only)
  type: string
  inputBinding:
    prefix: --seq_type
- id: use_column
  doc: Set if the expression file is a column file
  type: boolean
  inputBinding:
    prefix: --use_column
- id: no_wait
  doc: Do not wait for job to complete
  type: boolean
  inputBinding:
    prefix: --no_wait
outputs: []
cwlVersion: v1.1
baseCommand:
- tripaille
- expression
- add_expression
