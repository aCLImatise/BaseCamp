class: CommandLineTool
id: suppa.py_psiPerIsoform.cwl
inputs:
- id: in_gtf_file
  doc: Input gtf file
  type: File
  inputBinding:
    prefix: --gtf-file
- id: in_expression_file
  doc: Input expression file
  type: File
  inputBinding:
    prefix: --expression-file
- id: in_output_file
  doc: Path and name of the ouput file
  type: File
  inputBinding:
    prefix: --output-file
- id: in_mode
  doc: "to choose from DEBUG, INFO, WARNING, ERROR and\nCRITICAL\n"
  type: string
  inputBinding:
    prefix: --mode
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: Path and name of the ouput file
  type: File
  outputBinding:
    glob: $(inputs.in_output_file)
cwlVersion: v1.1
baseCommand:
- suppa.py
- psiPerIsoform
