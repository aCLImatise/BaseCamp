class: CommandLineTool
id: breakseq2_gen_bplib.py.cwl
inputs:
- id: reference
  doc: 'Reference FASTA (default: None)'
  type: string
  inputBinding:
    prefix: --reference
- id: output
  doc: 'Output FASTA to generate. Leave unspecified for stdout (default: None)'
  type: string
  inputBinding:
    prefix: --output
- id: chromosomes
  doc: 'List of chromosomes to process (default: [])'
  type: string[]
  inputBinding:
    prefix: --chromosomes
- id: log
  doc: 'Log level (default: INFO)'
  type: string
  inputBinding:
    prefix: --log
- id: bp_lib_gff
  doc: 'Breakpoint GFF input (default: None)'
  type: string
  inputBinding:
    prefix: --bplib_gff
- id: junction_length
  doc: 'Junction length (default: 200)'
  type: string
  inputBinding:
    prefix: --junction_length
- id: format_version
  doc: '{1,2} Version of breakpoint library format to use (default: 2)'
  type: boolean
  inputBinding:
    prefix: --format_version
outputs: []
cwlVersion: v1.1
baseCommand:
- breakseq2_gen_bplib.py
