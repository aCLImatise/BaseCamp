class: CommandLineTool
id: rgt_hint_estimation.cwl
inputs:
- id: in_organism
  doc: Organism considered on the analysis. Must have been
  type: string
  inputBinding:
    prefix: --organism
- id: in_bias_type
  doc: The methods that used to estimate the bias table
  type: string
  inputBinding:
    prefix: --bias-type
- id: in_reads_file
  doc: 'The BAM file containing aligned reads. DEFAULT: None'
  type: File
  inputBinding:
    prefix: --reads-file
- id: in_regions_file
  doc: The BED file containing regions to estimate the bias.
  type: File
  inputBinding:
    prefix: --regions-file
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- rgt-hint
- estimation
