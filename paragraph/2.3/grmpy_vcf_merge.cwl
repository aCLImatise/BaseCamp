class: CommandLineTool
id: grmpy_vcf_merge.py.cwl
inputs:
- id: input
  doc: Input VCF file of variants.
  type: string
  inputBinding:
    prefix: --input
- id: gr_mpy
  doc: JSON output from multigrmpy.py / grmpy
  type: string
  inputBinding:
    prefix: --grmpy
- id: output
  doc: Output file name.
  type: string
  inputBinding:
    prefix: --output
- id: log_file
  doc: Write logging information into file rather than to stderr
  type: string
  inputBinding:
    prefix: --logfile
- id: verbose
  doc: Raise logging level from warning to info.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: quiet
  doc: Set logging level to output errors only.
  type: boolean
  inputBinding:
    prefix: --quiet
- id: debug
  doc: Log debug level events.
  type: boolean
  inputBinding:
    prefix: --debug
outputs: []
cwlVersion: v1.1
baseCommand:
- grmpy-vcf-merge.py
