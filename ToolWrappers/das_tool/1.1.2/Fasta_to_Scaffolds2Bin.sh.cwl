class: CommandLineTool
id: Fasta_to_Scaffolds2Bin.sh.cwl
inputs:
- id: in_extension
  doc: 'Extension of fasta files. (default: fasta)'
  type: boolean?
  inputBinding:
    prefix: --extension
- id: in_input_folder
  doc: 'Folder with bins in fasta format. (default: ./)'
  type: boolean?
  inputBinding:
    prefix: --input_folder
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- Fasta_to_Scaffolds2Bin.sh
