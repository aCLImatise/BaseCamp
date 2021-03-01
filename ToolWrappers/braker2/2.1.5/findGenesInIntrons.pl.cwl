class: CommandLineTool
id: findGenesInIntrons.pl.cwl
inputs:
- id: in_in_gff
  doc: '[name] name of file with gtf format gene predictions'
  type: boolean?
  inputBinding:
    prefix: --in_gff
- id: in_jg_gff
  doc: '[name] name of file with corresponding joingenes predictions'
  type: boolean?
  inputBinding:
    prefix: --jg_gff
- id: in_out_gff
  doc: '[name] output (gtf format)'
  type: boolean?
  inputBinding:
    prefix: --out_gff
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- findGenesInIntrons.pl
