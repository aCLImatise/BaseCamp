class: CommandLineTool
id: Fasta_to_Scaffolds2Bin.sh.cwl
inputs:
- id: extension
  doc: 'Extension of fasta files. (default: fasta)'
  type: boolean
  inputBinding:
    prefix: --extension
- id: input_folder
  doc: 'Folder with bins in fasta format. (default: ./)'
  type: boolean
  inputBinding:
    prefix: --input_folder
outputs: []
cwlVersion: v1.1
baseCommand:
- Fasta_to_Scaffolds2Bin.sh
