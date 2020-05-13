class: CommandLineTool
id: GenesToBed.cwl
inputs:
- id: source
  doc: "Transcript source database. Valid: 'ccds,ensembl'"
  type: string
  inputBinding:
    prefix: -source
- id: mode
  doc: "Mode: gene = start/end of all transcripts, exon = start/end of all exons of\
    \ all transcripts. Valid: 'gene,exon'"
  type: string
  inputBinding:
    prefix: -mode
- id: in
  doc: "Input TXT file with one gene symbol per line. If unset, reads from STDIN.\
    \ Default value: ''"
  type: File
  inputBinding:
    prefix: -in
- id: out
  doc: "Output BED file. If unset, writes to STDOUT. Default value: ''"
  type: File
  inputBinding:
    prefix: -out
- id: fall_back
  doc: "Allow fallback to all source databases, if no transcript for a gene is defined\
    \ in the selected source database. Default value: 'false'"
  type: boolean
  inputBinding:
    prefix: -fallback
- id: an_no
  doc: "Annotate transcript identifier in addition to gene name. Default value: 'false'"
  type: boolean
  inputBinding:
    prefix: -anno
- id: test
  doc: "Uses the test database instead of on the production database. Default value:\
    \ 'false'"
  type: boolean
  inputBinding:
    prefix: -test
- id: changelog
  doc: Prints changeloge and exits.
  type: boolean
  inputBinding:
    prefix: --changelog
- id: tdx
  doc: Writes a Tool Definition Xml file. The file name is the application name with
    the suffix '.tdx'.
  type: boolean
  inputBinding:
    prefix: --tdx
outputs: []
cwlVersion: v1.1
baseCommand:
- GenesToBed
