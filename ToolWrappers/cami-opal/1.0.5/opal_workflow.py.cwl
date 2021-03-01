class: CommandLineTool
id: opal_workflow.py.cwl
inputs:
- id: in_input_dir
  doc: Input directory containing gzipped FASTQ files
  type: Directory?
  inputBinding:
    prefix: --input_dir
- id: in_output_dir
  doc: Output directory
  type: Directory?
  inputBinding:
    prefix: --output_dir
- id: in_gold_standard_file
  doc: Gold standard file
  type: File?
  inputBinding:
    prefix: --gold_standard_file
- id: in_yaml
  doc: 'Bioboxes YAML file (default: INPUT_DIR/biobox.yaml)'
  type: File?
  inputBinding:
    prefix: --yaml
- id: in_volume
  doc: Docker volume
  type: string?
  inputBinding:
    prefix: --volume
- id: in_no_normalization
  doc: Do not normalize samples
  type: boolean?
  inputBinding:
    prefix: --no_normalization
- id: in_plot_abundances
  doc: Plot abundances in the gold standard
  type: boolean?
  inputBinding:
    prefix: --plot_abundances
- id: in_labels
  doc: Comma-separated names of profilers to be shown in OPAL
  type: string?
  inputBinding:
    prefix: --labels
- id: in_desc
  doc: Description for HTML page
  type: string?
  inputBinding:
    prefix: --desc
- id: in_images
  doc: Docker images (bioboxes) of profilers
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_dir
  doc: Output directory
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_dir)
hints: []
cwlVersion: v1.1
baseCommand:
- opal_workflow.py
