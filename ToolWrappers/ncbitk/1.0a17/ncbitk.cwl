class: CommandLineTool
id: ../../../ncbitk.cwl
inputs:
- id: in_update
  doc: "/ --no-update          Sync your collection with the latest\nassembly versions"
  type: boolean
  inputBinding:
    prefix: --update
- id: in_update_assembly
  doc: "/ --local-assembly\nDownload the latest assembly summary and\ntaxonomy dumpOr\
    \ use your local copies."
  type: boolean
  inputBinding:
    prefix: --update-assembly
- id: in_from_file
  doc: ''
  type: File
  inputBinding:
    prefix: --from-file
- id: in_status
  doc: Show the current status of your genome
  type: boolean
  inputBinding:
    prefix: --status
- id: in_collection
  doc: --help                          Show this message and exit.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- ncbitk
