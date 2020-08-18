class: CommandLineTool
id: ../../../checkm_unbinned.cwl
inputs:
- id: extension
  doc: 'extension of bins (other files in directory are ignored) (default: fna)'
  type: string
  inputBinding:
    prefix: --extension
- id: min_seq_len
  doc: required length of sequence
  type: long
  inputBinding:
    prefix: --min_seq_len
- id: quiet
  doc: suppress console output
  type: boolean
  inputBinding:
    prefix: --quiet
- id: bin_dir
  doc: directory containing bins (fasta format)
  type: string
  inputBinding:
    position: 0
- id: seq_file
  doc: sequences used to generate bins (fasta format)
  type: string
  inputBinding:
    position: 1
- id: output_seq_file
  doc: write unbinned sequences to file
  type: string
  inputBinding:
    position: 2
- id: output_stats_file
  doc: write unbinned sequence statistics to file
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- checkm
- unbinned
