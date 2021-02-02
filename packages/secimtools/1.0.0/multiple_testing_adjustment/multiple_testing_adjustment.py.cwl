class: CommandLineTool
id: multiple_testing_adjustment.py.cwl
inputs:
- id: in_input
  doc: Input dataset in wide format.
  type: string
  inputBinding:
    prefix: --input
- id: in_uniqid
  doc: Name of the column with uniquedentifiers.
  type: string
  inputBinding:
    prefix: --uniqID
- id: in_pval
  doc: Name of the column with p-value.
  type: string
  inputBinding:
    prefix: --pval
- id: in_alpha
  doc: Alpha value.
  type: string
  inputBinding:
    prefix: --alpha
- id: in_out_adjusted
  doc: Output path for corrected file[TSV]
  type: File
  inputBinding:
    prefix: --outadjusted
- id: in_flags
  doc: "Output path for flags file[TSV]\n"
  type: File
  inputBinding:
    prefix: --flags
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_adjusted
  doc: Output path for corrected file[TSV]
  type: File
  outputBinding:
    glob: $(inputs.in_out_adjusted)
- id: out_flags
  doc: "Output path for flags file[TSV]\n"
  type: File
  outputBinding:
    glob: $(inputs.in_flags)
cwlVersion: v1.1
baseCommand:
- multiple_testing_adjustment.py
