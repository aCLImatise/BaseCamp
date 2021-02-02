class: CommandLineTool
id: opal_stats.py.cwl
inputs:
- id: in_input_dir
  doc: Input directory containing gzipped FASTQ files
  type: Directory
  inputBinding:
    prefix: --input_dir
- id: in_output_dir
  doc: Output directory
  type: Directory
  inputBinding:
    prefix: --output_dir
- id: in_yaml
  doc: 'Bioboxes YAML file (default: INPUT_DIR/biobox.yaml)'
  type: File
  inputBinding:
    prefix: --yaml
- id: in_volume
  doc: Docker volume
  type: string
  inputBinding:
    prefix: --volume
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_dir
  doc: Output directory
  type: Directory
  outputBinding:
    glob: $(inputs.in_output_dir)
cwlVersion: v1.1
baseCommand:
- opal_stats.py
