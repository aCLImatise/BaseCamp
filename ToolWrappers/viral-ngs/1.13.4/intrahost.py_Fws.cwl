class: CommandLineTool
id: intrahost.py_Fws.cwl
inputs:
- id: in_loglevel
  doc: 'Verboseness of output. [default: DEBUG]'
  type: string
  inputBinding:
    prefix: --loglevel
- id: in_in_vcf
  doc: Input VCF file
  type: string
  inputBinding:
    position: 0
- id: in_out_vcf
  doc: Output VCF file
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- intrahost.py
- Fws
