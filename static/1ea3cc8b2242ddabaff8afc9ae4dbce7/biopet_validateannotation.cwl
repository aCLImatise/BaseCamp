class: CommandLineTool
id: biopet_validateannotation.cwl
inputs:
- id: log_level
  doc: "Level of log information printed. Possible levels: 'debug', 'info', 'warn',\
    \ 'error'"
  type: string
  inputBinding:
    prefix: --log_level
- id: ref_flat_file
  doc: Refflat file to check
  type: File
  inputBinding:
    prefix: --refflatFile
- id: gtf_file
  doc: Gtf files to check
  type: File
  inputBinding:
    prefix: --gtfFile
- id: reference
  doc: Reference fasta to check vcf file against
  type: File
  inputBinding:
    prefix: --reference
- id: disable_fail
  doc: Do not fail on error. The tool will still exit when encountering an error,
    but will do so with exit code 0
  type: boolean
  inputBinding:
    prefix: --disableFail
outputs: []
cwlVersion: v1.1
baseCommand:
- biopet-validateannotation
