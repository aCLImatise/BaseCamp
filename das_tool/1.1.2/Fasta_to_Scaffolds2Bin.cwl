#!/usr/bin/env cwl-runner

baseCommand:
- Fasta_to_Scaffolds2Bin.sh
class: CommandLineTool
cwlVersion: v1.0
id: fasta_to_scaffolds2bin.sh
inputs:
- doc: 'Extension of fasta files. (default: fasta)'
  id: extension
  inputBinding:
    prefix: --extension
  type: boolean
- doc: 'Folder with bins in fasta format. (default: ./)'
  id: input_folder
  inputBinding:
    prefix: --input_folder
  type: boolean
