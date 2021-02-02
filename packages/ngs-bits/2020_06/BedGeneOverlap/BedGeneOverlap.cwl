class: CommandLineTool
id: BedGeneOverlap.cwl
inputs:
- id: in_source
  doc: "Transcript source database.\nValid: 'ccds,ensembl'"
  type: string
  inputBinding:
    prefix: -source
- id: in_in
  doc: "Input BED file. If unset, reads from STDIN.\nDefault value: ''"
  type: File
  inputBinding:
    prefix: -in
- id: in_out
  doc: "Output TSV file. If unset, writes to STDOUT.\nDefault value: ''"
  type: File
  inputBinding:
    prefix: -out
- id: in_test
  doc: "Uses the test database instead of on the production database.\nDefault value:\
    \ 'false'"
  type: boolean
  inputBinding:
    prefix: -test
- id: in_changelog
  doc: Prints changeloge and exits.
  type: boolean
  inputBinding:
    prefix: --changelog
- id: in_tdx
  doc: Writes a Tool Definition Xml file. The file name is the application name with
    the suffix '.tdx'.
  type: boolean
  inputBinding:
    prefix: --tdx
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: "Output TSV file. If unset, writes to STDOUT.\nDefault value: ''"
  type: File
  outputBinding:
    glob: $(inputs.in_out)
cwlVersion: v1.1
baseCommand:
- BedGeneOverlap
