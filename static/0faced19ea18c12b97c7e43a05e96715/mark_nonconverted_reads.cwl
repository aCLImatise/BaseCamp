class: CommandLineTool
id: mark_nonconverted_reads.py.cwl
inputs:
- id: reference
  doc: Reference fasta file
  type: string
  inputBinding:
    prefix: --reference
- id: bam
  doc: Input bam or sam file (must end in .bam or .sam) [default = stdin]
  type: string
  inputBinding:
    prefix: --bam
- id: out
  doc: Name for output sam file [default = stdout]
  type: string
  inputBinding:
    prefix: --out
- id: c_count
  doc: Minimum number of nonconverted Cs on a read to consider it nonconverted [default
    = 3]
  type: string
  inputBinding:
    prefix: --c_count
- id: flag_reads
  doc: Set the 'Failing platform / vendor quality check flag
  type: boolean
  inputBinding:
    prefix: --flag_reads
outputs: []
cwlVersion: v1.1
baseCommand:
- mark-nonconverted-reads.py
