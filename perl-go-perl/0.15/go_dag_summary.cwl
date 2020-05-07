class: CommandLineTool
id: go_dag_summary.pl.cwl
inputs:
- id: e
  doc: writes parse errors in XML - defaults to STDERR (there should be no parse errors
    in well formed files)
  type: string
  inputBinding:
    prefix: -e
- id: p
  doc: determines which parser to use; if left unspecified, will make a guess based
    on file suffix. See below for formats
  type: string
  inputBinding:
    prefix: -p
outputs: []
cwlVersion: v1.1
baseCommand:
- go-dag-summary.pl
