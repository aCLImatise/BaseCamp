class: CommandLineTool
id: scelvis_convert.cwl
inputs:
- id: in_input_dir
  doc: path to input/pipeline output directory
  type: File
  inputBinding:
    prefix: --input-dir
- id: in_about_md
  doc: "Path to about.md file to embed in the resulting .h5ad\nfile"
  type: File
  inputBinding:
    prefix: --about-md
- id: in_markers
  doc: "Path to markers.tsv file to embed in the resulting\n.h5ad file"
  type: File
  inputBinding:
    prefix: --markers
- id: in_output
  doc: Path to the .h5ad file to write to
  type: File
  inputBinding:
    prefix: --output
- id: in_format
  doc: input format
  type: string
  inputBinding:
    prefix: --format
- id: in_use_raw
  doc: Do not normalize expression values (use raw counts)
  type: boolean
  inputBinding:
    prefix: --use-raw
- id: in_split_species
  doc: Split species
  type: boolean
  inputBinding:
    prefix: --split-species
- id: in_split_samples
  doc: "split samples according to summary.json file produced\nby cellranger aggr"
  type: boolean
  inputBinding:
    prefix: --split-samples
- id: in_n_markers
  doc: Save top n markers per cluster [10]
  type: long
  inputBinding:
    prefix: --nmarkers
- id: in_verbose
  doc: Enable verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- scelvis
- convert
