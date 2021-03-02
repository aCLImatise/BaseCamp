class: CommandLineTool
id: snippy_clean_full_aln.cwl
inputs:
- id: in_debug
  doc: "!      Output verbose debug info (default '0')."
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_to
  doc: Replacement char (default 'N').
  type: string?
  inputBinding:
    prefix: --to
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- snippy-clean_full_aln
