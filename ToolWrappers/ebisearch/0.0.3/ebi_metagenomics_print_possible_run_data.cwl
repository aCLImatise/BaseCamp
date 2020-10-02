class: CommandLineTool
id: ebi_metagenomics_print_possible_run_data.cwl
inputs:
- id: in_run
  doc: Id of a run in EBI metagenomics
  type: string
  inputBinding:
    prefix: --run
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- ebi_metagenomics
- print_possible_run_data
