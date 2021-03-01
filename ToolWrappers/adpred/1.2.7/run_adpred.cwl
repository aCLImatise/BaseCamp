class: CommandLineTool
id: run_adpred.cwl
inputs:
- id: in_saturated_mutagenesis
  doc: (list of start positions separated by comma. Ends are starts+30)
  type: boolean?
  inputBinding:
    prefix: --saturated-mutagenesis
- id: in_output_prefix
  doc: (if empty will use protein.id. if prot_id not provided it will be empty)
  type: boolean?
  inputBinding:
    prefix: --output-prefix
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- run-adpred
