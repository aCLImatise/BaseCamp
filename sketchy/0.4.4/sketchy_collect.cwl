class: CommandLineTool
id: sketchy_collect.cwl
inputs:
- id: directory
  doc: Path to directory to collect {prefix}.data.tsv
  type: File
  inputBinding:
    prefix: --directory
- id: next_flow
  doc: Predictions are from Sketchy Nextflow
  type: boolean
  inputBinding:
    prefix: --nextflow
- id: prefix
  doc: Prefix for summary files [summary]
  type: string
  inputBinding:
    prefix: --prefix
- id: subset
  doc: 'When using Nextflow use a subset string for specific configurationsof ranks
    & reads: 10,1000 - or a sample prefix: isolate1  [None]'
  type: string
  inputBinding:
    prefix: --subset
- id: reference
  doc: Genotype matrix in same format as output containing feature truths
  type: File
  inputBinding:
    prefix: --reference
- id: heat_map
  doc: Visualize results as heatmap
  type: boolean
  inputBinding:
    prefix: --heatmap
- id: time
  doc: Parse the time enhanced output files for Nextflow
  type: boolean
  inputBinding:
    prefix: --time
- id: threshold
  doc: Apply threshold value to median preference score summary; values below are
    set to 0 [0.6]
  type: double
  inputBinding:
    prefix: --threshold
- id: statistics
  doc: Read the *.filtered.stats.txt files from the Nextflow output and summarise
    by prefix.
  type: boolean
  inputBinding:
    prefix: --statistics
- id: scale
  doc: Scale plot sizes [1.0]
  type: double
  inputBinding:
    prefix: --scale
- id: coverage
  doc: Collect coverage information *.coverage.txt from CoverM in Nextflow
  type: boolean
  inputBinding:
    prefix: --coverage
- id: image_format
  doc: Output image format [pdf]
  type: string
  inputBinding:
    prefix: --image_format
outputs: []
cwlVersion: v1.1
baseCommand:
- sketchy
- collect
