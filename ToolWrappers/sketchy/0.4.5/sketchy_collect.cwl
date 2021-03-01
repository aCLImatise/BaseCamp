class: CommandLineTool
id: sketchy_collect.cwl
inputs:
- id: in_directory
  doc: Path to directory to collect {prefix}.data.tsv
  type: File?
  inputBinding:
    prefix: --directory
- id: in_next_flow
  doc: Predictions are from Sketchy Nextflow
  type: boolean?
  inputBinding:
    prefix: --nextflow
- id: in_prefix
  doc: Prefix for summary files [summary]
  type: string?
  inputBinding:
    prefix: --prefix
- id: in_subset
  doc: "When using Nextflow use a subset string for\nspecific configurationsof ranks\
    \ & reads: 10,1000 -\nor a sample prefix: isolate1  [None]"
  type: string?
  inputBinding:
    prefix: --subset
- id: in_reference
  doc: "Genotype matrix in same format as output containing\nfeature truths"
  type: File?
  inputBinding:
    prefix: --reference
- id: in_heat_map
  doc: Visualize results as heatmap
  type: boolean?
  inputBinding:
    prefix: --heatmap
- id: in_time
  doc: Parse the time enhanced output files for Nextflow
  type: boolean?
  inputBinding:
    prefix: --time
- id: in_threshold
  doc: "Apply threshold value to median preference score\nsummary; values below are\
    \ set to 0 [0.6]"
  type: double?
  inputBinding:
    prefix: --threshold
- id: in_statistics
  doc: "Read the *.filtered.stats.txt files from the\nNextflow output and summarise\
    \ by prefix."
  type: boolean?
  inputBinding:
    prefix: --statistics
- id: in_scale
  doc: Scale plot sizes [1.0]
  type: double?
  inputBinding:
    prefix: --scale
- id: in_coverage
  doc: "Collect coverage information *.coverage.txt from\nCoverM in Nextflow"
  type: boolean?
  inputBinding:
    prefix: --coverage
- id: in_image_format
  doc: Output image format [pdf]
  type: string?
  inputBinding:
    prefix: --image_format
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/sketchy:0.4.5--py37h9a982cc_0
cwlVersion: v1.1
baseCommand:
- sketchy
- collect
