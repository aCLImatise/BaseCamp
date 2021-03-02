class: CommandLineTool
id: gmcloser_blast.pl_directory.cwl
inputs:
- id: in_target_s_caf
  doc: 'is not specied:'
  type: string?
  inputBinding:
    prefix: --target_scaf
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- gmcloser-blast.pl
- directory
