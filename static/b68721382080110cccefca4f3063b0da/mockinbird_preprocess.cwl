class: CommandLineTool
id: mockinbird_preprocess.cwl
inputs:
- id: par_clip_fast_q
  doc: path to PAR-CLIP fastq reads
  type: string
  inputBinding:
    position: 0
- id: output_dir
  doc: output directory - will be created if it does not exist
  type: string
  inputBinding:
    position: 1
- id: prefix
  doc: filename prefix for newly created files
  type: string
  inputBinding:
    position: 2
- id: config_file
  doc: path to preprocessing config file
  type: string
  inputBinding:
    position: 3
- id: log_level
  doc: 'verbosity level of the logger (default: info)'
  type: string
  inputBinding:
    prefix: --log_level
outputs: []
cwlVersion: v1.1
baseCommand:
- mockinbird
- preprocess
