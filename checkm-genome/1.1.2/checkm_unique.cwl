class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/checkm_unique.cwl
inputs:
- id: extension
  doc: 'extension of bins (all other files in bin directory are ignored) (default:
    fna)'
  type: string
  inputBinding:
    prefix: --extension
- id: bin_dir
  doc: directory containing bins (fasta format)
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- checkm
- unique
