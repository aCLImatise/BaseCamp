class: CommandLineTool
id: opal_stats.py.cwl
inputs:
- id: image
  doc: Docker image (biobox) of profiler
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
outputs: []
cwlVersion: v1.1
baseCommand:
- opal_stats.py
