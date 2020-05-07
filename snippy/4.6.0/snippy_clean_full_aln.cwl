class: CommandLineTool
id: snippy_clean_full_aln.cwl
inputs:
- id: debug
  doc: "!      Output verbose debug info (default '0')."
  type: boolean
  inputBinding:
    prefix: --debug
- id: to
  doc: Replacement char (default 'N').
  type: string
  inputBinding:
    prefix: --to
outputs: []
cwlVersion: v1.1
baseCommand:
- snippy-clean_full_aln
