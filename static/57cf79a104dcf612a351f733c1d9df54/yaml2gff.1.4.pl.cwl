class: CommandLineTool
id: yaml2gff.1.4.pl.cwl
inputs:
- id: in_filter_status
  doc: filter out alignments with given status, e.g. 'incomplete'
  type: string?
  inputBinding:
    prefix: --filterstatus
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- yaml2gff.1.4.pl
