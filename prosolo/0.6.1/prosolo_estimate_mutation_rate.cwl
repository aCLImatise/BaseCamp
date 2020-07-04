class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/prosolo_estimate_mutation_rate.cwl
inputs:
- id: fit
  doc: Path to file that will contain observations and the parameters of the fitted
    model as JSON.
  type: File
  inputBinding:
    prefix: --fit
- id: max_af
  doc: Maximum allele frequency to consider [0.25].
  type: double
  inputBinding:
    prefix: --max-af
- id: min_af
  doc: Minimum allele frequency to consider [0.12].
  type: double
  inputBinding:
    prefix: --min-af
outputs: []
cwlVersion: v1.1
baseCommand:
- prosolo
- estimate-mutation-rate
