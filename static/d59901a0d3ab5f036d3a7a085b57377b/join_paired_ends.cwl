class: CommandLineTool
id: join_paired_ends.py.cwl
inputs:
- id: forward_reads_fp
  doc: Path to input forward reads in FASTQ format. [REQUIRED]
  type: string
  inputBinding:
    prefix: --forward_reads_fp
- id: reverse_reads_fp
  doc: Path to input reverse reads in FASTQ format. [REQUIRED]
  type: string
  inputBinding:
    prefix: --reverse_reads_fp
- id: output_dir
  doc: Directory to store result files [REQUIRED]
  type: string
  inputBinding:
    prefix: --output_dir
outputs: []
cwlVersion: v1.1
baseCommand:
- join_paired_ends.py
