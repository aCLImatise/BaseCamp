class: CommandLineTool
id: opal_workflow.py.cwl
inputs:
- id: images
  doc: Docker images (bioboxes) of profilers
  type: string
  inputBinding:
    position: 0
- id: input_dir
  doc: Input directory containing gzipped FASTQ files
  type: string
  inputBinding:
    prefix: --input_dir
- id: output_dir
  doc: Output directory
  type: string
  inputBinding:
    prefix: --output_dir
- id: gold_standard_file
  doc: Gold standard file
  type: string
  inputBinding:
    prefix: --gold_standard_file
- id: yaml
  doc: 'Bioboxes YAML file (default: INPUT_DIR/biobox.yaml)'
  type: string
  inputBinding:
    prefix: --yaml
- id: volume
  doc: Docker volume
  type: string
  inputBinding:
    prefix: --volume
- id: no_normalization
  doc: Do not normalize samples
  type: boolean
  inputBinding:
    prefix: --no_normalization
- id: plot_abundances
  doc: Plot abundances in the gold standard
  type: boolean
  inputBinding:
    prefix: --plot_abundances
- id: labels
  doc: Comma-separated names of profilers to be shown in OPAL
  type: string
  inputBinding:
    prefix: --labels
- id: desc
  doc: Description for HTML page
  type: string
  inputBinding:
    prefix: --desc
outputs: []
cwlVersion: v1.1
baseCommand:
- opal_workflow.py
