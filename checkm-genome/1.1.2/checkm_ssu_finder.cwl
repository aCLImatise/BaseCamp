class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/checkm_ssu_finder.cwl
inputs:
- id: extension
  doc: 'extension of bins (other files in directory are ignored) (default: fna)'
  type: string
  inputBinding:
    prefix: --extension
- id: evalue
  doc: 'e-value threshold for identifying hits (default: 1e-05)'
  type: string
  inputBinding:
    prefix: --evalue
- id: concatenate
  doc: 'concatenate hits that are within the specified number of base pairs (default:
    200)'
  type: string
  inputBinding:
    prefix: --concatenate
- id: threads
  doc: 'number of threads (default: 1)'
  type: string
  inputBinding:
    prefix: --threads
- id: quiet
  doc: suppress console output
  type: boolean
  inputBinding:
    prefix: --quiet
- id: seq_file
  doc: sequences used to generate bins (fasta format)
  type: string
  inputBinding:
    position: 0
- id: bin_dir
  doc: directory containing bins (fasta format)
  type: string
  inputBinding:
    position: 1
- id: output_dir
  doc: directory to write output files
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- checkm
- ssu_finder
