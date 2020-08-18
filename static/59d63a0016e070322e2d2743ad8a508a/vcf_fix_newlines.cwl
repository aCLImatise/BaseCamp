class: CommandLineTool
id: ../../../vcf_fix_newlines.cwl
inputs:
- id: info
  doc: Report if the file is consistent with the current platform based.
  type: boolean
  inputBinding:
    prefix: --info
outputs: []
cwlVersion: v1.1
baseCommand:
- vcf-fix-newlines
