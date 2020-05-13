class: CommandLineTool
id: design_naively.py.cwl
inputs:
- id: dataset
  doc: Label for the target dataset
  type: string
  inputBinding:
    position: 0
- id: add_reverse_complements
  doc: Add to the output the reverse complement of each probe
  type: boolean
  inputBinding:
    prefix: --add-reverse-complements
- id: limit_target_genomes
  doc: (Optional) Use only the first N target genomes in the dataset
  type: string
  inputBinding:
    prefix: --limit-target-genomes
- id: limit_target_genomes_randomly_with_replacement
  doc: (Optional) Randomly select N target genomes in the dataset with replacement
  type: string
  inputBinding:
    prefix: --limit-target-genomes-randomly-with-replacement
- id: print_analysis
  doc: Print analysis of the probe set's coverage
  type: boolean
  inputBinding:
    prefix: --print-analysis
- id: debug
  doc: Debug output
  type: boolean
  inputBinding:
    prefix: --debug
- id: verbose
  doc: Verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- design_naively.py
