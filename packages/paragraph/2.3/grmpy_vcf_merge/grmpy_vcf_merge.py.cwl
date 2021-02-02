class: CommandLineTool
id: grmpy_vcf_merge.py.cwl
inputs:
- id: in_input
  doc: Input VCF file of variants.
  type: File
  inputBinding:
    prefix: --input
- id: in_gr_mpy
  doc: JSON output from multigrmpy.py / grmpy
  type: string
  inputBinding:
    prefix: --grmpy
- id: in_output
  doc: Output file name.
  type: File
  inputBinding:
    prefix: --output
- id: in_log_file
  doc: Write logging information into file rather than to
  type: File
  inputBinding:
    prefix: --logfile
- id: in_quiet
  doc: Set logging level to output errors only.
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_debug
  doc: Log debug level events.
  type: boolean
  inputBinding:
    prefix: --debug
- id: in_stderr
  doc: --verbose             Raise logging level from warning to info.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Output file name.
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- grmpy-vcf-merge.py
