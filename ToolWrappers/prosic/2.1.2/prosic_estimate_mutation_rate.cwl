class: CommandLineTool
id: prosic_estimate_mutation_rate.cwl
inputs:
- id: in_fit
  doc: Path to file that will observations and the parameters of the fitted model
    as JSON.
  type: File
  inputBinding:
    prefix: --fit
- id: in_max_af
  doc: Maximum allele frequency to consider [0.25].
  type: double
  inputBinding:
    prefix: --max-af
- id: in_min_af
  doc: Minimum allele frequency to consider [0.12].
  type: double
  inputBinding:
    prefix: --min-af
- id: in_pro_sic
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- prosic
- estimate-mutation-rate
