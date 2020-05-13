class: CommandLineTool
id: alpha_diversity.py.cwl
inputs:
- id: verbose
  doc: 'Print information during execution -- useful for debugging [default: False]'
  type: boolean
  inputBinding:
    prefix: --verbose
- id: input_path
  doc: 'Input OTU table filepath or input directory containing OTU tables for batch
    processing. [default: none]'
  type: string
  inputBinding:
    prefix: --input_path
- id: output_path
  doc: 'Output filepath to store alpha diversity metric(s) for each sample in a tab-separated
    format or output directory when batch processing. [default: none]'
  type: string
  inputBinding:
    prefix: --output_path
- id: metrics
  doc: 'Alpha-diversity metric(s) to use. A comma-separated list should be provided
    when multiple metrics are specified. [default: PD_whole_tree,chao1,observed_otus]'
  type: string
  inputBinding:
    prefix: --metrics
- id: show_metrics
  doc: Show the available alpha-diversity metrics and exit.
  type: boolean
  inputBinding:
    prefix: --show_metrics
- id: tree_path
  doc: 'Input newick tree filepath. [default: none; REQUIRED for phylogenetic metrics]'
  type: string
  inputBinding:
    prefix: --tree_path
outputs: []
cwlVersion: v1.1
baseCommand:
- alpha_diversity.py
