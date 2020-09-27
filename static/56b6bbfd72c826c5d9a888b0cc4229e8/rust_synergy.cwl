class: CommandLineTool
id: rust_synergy.cwl
inputs:
- id: in_directory_path_outputfile
  doc: directory  path to outputfile, default is "synergy"
  type: File
  inputBinding:
    prefix: -o
- id: in_rust_amino_file
  doc: path to file produced from "rust_amino"
  type: string
  inputBinding:
    position: 0
- id: in_rust_tripeptide_file
  doc: path to file produced from "rust_tripeptide"
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- rust_synergy
