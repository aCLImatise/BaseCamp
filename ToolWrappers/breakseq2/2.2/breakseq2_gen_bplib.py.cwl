class: CommandLineTool
id: breakseq2_gen_bplib.py.cwl
inputs:
- id: in_reference
  doc: 'Reference FASTA (default: None)'
  type: string
  inputBinding:
    prefix: --reference
- id: in_output
  doc: "Output FASTA to generate. Leave unspecified for stdout\n(default: None)"
  type: string
  inputBinding:
    prefix: --output
- id: in_chromosomes
  doc: 'List of chromosomes to process (default: [])'
  type: string[]
  inputBinding:
    prefix: --chromosomes
- id: in_log
  doc: 'Log level (default: INFO)'
  type: string
  inputBinding:
    prefix: --log
- id: in_bp_lib_gff
  doc: 'Breakpoint GFF input (default: None)'
  type: string
  inputBinding:
    prefix: --bplib_gff
- id: in_junction_length
  doc: 'Junction length (default: 200)'
  type: long
  inputBinding:
    prefix: --junction_length
- id: in_format_version
  doc: "Version of breakpoint library format to use (default:\n2)\n"
  type: string
  inputBinding:
    prefix: --format_version
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- breakseq2_gen_bplib.py
