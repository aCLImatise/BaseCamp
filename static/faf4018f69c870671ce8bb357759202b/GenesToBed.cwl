class: CommandLineTool
id: GenesToBed.cwl
inputs:
- id: in_source
  doc: "Transcript source database.\nValid: 'ccds,ensembl'"
  type: string?
  inputBinding:
    prefix: -source
- id: in_mode
  doc: "Mode: gene = start/end of all transcripts, exon = start/end of all exons of\
    \ all transcripts.\nValid: 'gene,exon'"
  type: string?
  inputBinding:
    prefix: -mode
- id: in_in
  doc: "Input TXT file with one gene symbol per line. If unset, reads from STDIN.\n\
    Default value: ''"
  type: File?
  inputBinding:
    prefix: -in
- id: in_out
  doc: "Output BED file. If unset, writes to STDOUT.\nDefault value: ''"
  type: File?
  inputBinding:
    prefix: -out
- id: in_fall_back
  doc: "Allow fallback to all source databases, if no transcript for a gene is defined\
    \ in the selected source database.\nDefault value: 'false'"
  type: boolean?
  inputBinding:
    prefix: -fallback
- id: in_an_no
  doc: "Annotate transcript identifier in addition to gene name.\nDefault value: 'false'"
  type: boolean?
  inputBinding:
    prefix: -anno
- id: in_test
  doc: "Uses the test database instead of on the production database.\nDefault value:\
    \ 'false'"
  type: boolean?
  inputBinding:
    prefix: -test
- id: in_changelog
  doc: Prints changeloge and exits.
  type: boolean?
  inputBinding:
    prefix: --changelog
- id: in_tdx
  doc: Writes a Tool Definition Xml file. The file name is the application name with
    the suffix '.tdx'.
  type: boolean?
  inputBinding:
    prefix: --tdx
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: "Output BED file. If unset, writes to STDOUT.\nDefault value: ''"
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints: []
cwlVersion: v1.1
baseCommand:
- GenesToBed
