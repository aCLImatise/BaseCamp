class: CommandLineTool
id: vSNP_step1.py.cwl
inputs:
- id: in_read_one
  doc: 'Required: single read, R1 when Illumina read'
  type: long
  inputBinding:
    prefix: --read1
- id: in_read_two
  doc: 'Optional: R2 Illumina read'
  type: long
  inputBinding:
    prefix: --read2
- id: in_reference
  doc: "Optional: Provide reference option or FASTA file. If\nneither are given, no\
    \ -r option, then a\nTB/Brucella/paraTB best reference are searched"
  type: File
  inputBinding:
    prefix: --reference
- id: in_gbk
  doc: 'Optional: gbk to annotate VCF file'
  type: File
  inputBinding:
    prefix: --gbk
- id: in_table
  doc: See reference options
  type: boolean
  inputBinding:
    prefix: --table
- id: in_group
  doc: "Optional: group output via best_reference.py, ie\nspecify TB or Bruc which\
    \ initials spoligo or MLST\ngeneration"
  type: string
  inputBinding:
    prefix: --group
- id: in_skip_assembly
  doc: 'Optional: skip assembly of unmapped reads'
  type: boolean
  inputBinding:
    prefix: --skip_assembly
- id: in_prog
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- vSNP_step1.py
