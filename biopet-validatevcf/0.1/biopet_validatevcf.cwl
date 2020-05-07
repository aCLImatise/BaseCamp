class: CommandLineTool
id: biopet_validatevcf.cwl
inputs:
- id: log_level
  doc: "Level of log information printed. Possible levels: 'debug', 'info', 'warn',\
    \ 'error'"
  type: string
  inputBinding:
    prefix: --log_level
- id: input_vcf
  doc: Vcf file to check
  type: File
  inputBinding:
    prefix: --inputVcf
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
- biopet-validatevcf
