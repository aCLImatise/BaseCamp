class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/rust_synergy.bak.cwl
inputs:
- id: directory_path_outputfile
  doc: directory  path to outputfile, default is "synergy"
  type: string
  inputBinding:
    prefix: -o
- id: rust_amino_file
  doc: path to file produced from "rust_amino"
  type: string
  inputBinding:
    position: 0
- id: rust_tripeptide_file
  doc: path to file produced from "rust_tripeptide"
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- rust_synergy.bak
