class: CommandLineTool
id: mark_nonconverted_reads.py.cwl
inputs:
- id: in_reference
  doc: Reference fasta file
  type: File
  inputBinding:
    prefix: --reference
- id: in_bam
  doc: "Input bam or sam file (must end in .bam or .sam)\n[default = stdin]"
  type: File
  inputBinding:
    prefix: --bam
- id: in_out
  doc: Name for output sam file [default = stdout]
  type: File
  inputBinding:
    prefix: --out
- id: in_c_count
  doc: "Minimum number of nonconverted Cs on a read to\nconsider it nonconverted [default\
    \ = 3]"
  type: long
  inputBinding:
    prefix: --c_count
- id: in_flag_reads
  doc: Set the 'Failing platform / vendor quality check flag
  type: boolean
  inputBinding:
    prefix: --flag_reads
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: Name for output sam file [default = stdout]
  type: File
  outputBinding:
    glob: $(inputs.in_out)
cwlVersion: v1.1
baseCommand:
- mark-nonconverted-reads.py
