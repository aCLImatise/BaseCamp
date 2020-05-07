class: CommandLineTool
id: extract_reads_from_interleaved_file.py.cwl
inputs:
- id: input_fp
  doc: Path to input forward reads in FASTQ format. [REQUIRED]
  type: string
  inputBinding:
    prefix: --input_fp
- id: output_dir
  doc: Directory to store result files [REQUIRED]
  type: string
  inputBinding:
    prefix: --output_dir
outputs: []
cwlVersion: v1.1
baseCommand:
- extract_reads_from_interleaved_file.py
