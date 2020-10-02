class: CommandLineTool
id: biopet_validateannotation.cwl
inputs:
- id: in_log_level
  doc: "Level of log information printed. Possible levels: 'debug', 'info', 'warn',\
    \ 'error'"
  type: string
  inputBinding:
    prefix: --log_level
- id: in_ref_flat_file
  doc: Refflat file to check
  type: File
  inputBinding:
    prefix: --refflatFile
- id: in_gtf_file
  doc: Gtf files to check
  type: File
  inputBinding:
    prefix: --gtfFile
- id: in_reference
  doc: Reference fasta to check vcf file against
  type: File
  inputBinding:
    prefix: --reference
- id: in_disable_fail
  doc: Do not fail on error. The tool will still exit when encountering an error,
    but will do so with exit code 0
  type: boolean
  inputBinding:
    prefix: --disableFail
- id: in_validate_annotation
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
- biopet-validateannotation
