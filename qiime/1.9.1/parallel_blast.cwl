class: CommandLineTool
id: parallel_blast.py.cwl
inputs:
- id: in_file_path
  doc: Path of sequences to use as queries [REQUIRED]
  type: string
  inputBinding:
    prefix: --infile_path
- id: output_dir
  doc: name of output directory for blast jobs [REQUIRED]
  type: string
  inputBinding:
    prefix: --output_dir
outputs: []
cwlVersion: v1.1
baseCommand:
- parallel_blast.py
