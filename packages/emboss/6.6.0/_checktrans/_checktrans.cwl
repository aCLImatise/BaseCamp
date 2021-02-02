class: CommandLineTool
id: _checktrans.cwl
inputs:
- id: in_or_fml
  doc: "integer    [100] Minimum ORF Length to report (Integer\n1 or more)"
  type: boolean
  inputBinding:
    prefix: -orfml
- id: in_stops_dot
  doc: 'Advanced (Unprompted) qualifiers: (none)'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- _checktrans
