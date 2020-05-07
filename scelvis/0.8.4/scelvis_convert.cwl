class: CommandLineTool
id: scelvis_convert.cwl
inputs:
- id: input_dir
  doc: path to input/pipeline output directory
  type: string
  inputBinding:
    prefix: --input-dir
- id: about_md
  doc: Path to about.md file to embed in the resulting .h5ad file
  type: string
  inputBinding:
    prefix: --about-md
- id: markers
  doc: Path to markers.tsv file to embed in the resulting .h5ad file
  type: string
  inputBinding:
    prefix: --markers
- id: output
  doc: Path to the .h5ad file to write to
  type: string
  inputBinding:
    prefix: --output
- id: format
  doc: input format
  type: string
  inputBinding:
    prefix: --format
- id: use_raw
  doc: Do not normalize expression values (use raw counts)
  type: boolean
  inputBinding:
    prefix: --use-raw
- id: split_species
  doc: Split species
  type: boolean
  inputBinding:
    prefix: --split-species
- id: split_samples
  doc: split samples according to summary.json file produced by cellranger aggr
  type: boolean
  inputBinding:
    prefix: --split-samples
- id: n_markers
  doc: Save top n markers per cluster [10]
  type: string
  inputBinding:
    prefix: --nmarkers
- id: verbose
  doc: Enable verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- scelvis
- convert
