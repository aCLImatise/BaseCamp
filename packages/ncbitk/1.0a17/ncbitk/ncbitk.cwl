class: CommandLineTool
id: ncbitk.cwl
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
  doc: "--status                        Show the current status of your genome\ncollection\n\
    --help                          Show this message and exit.\n"
  type: File
  inputBinding:
    prefix: --from-file
- id: in_genbank
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_species
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- ncbitk
