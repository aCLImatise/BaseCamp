class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/checkm_merge.cwl
inputs:
- id: genes
  doc: bins contain genes as amino acids instead of nucleotide contigs
  type: boolean
  inputBinding:
    prefix: --genes
- id: delta_comp
  doc: 'minimum increase in completeness to report pair (default: 5.0)'
  type: string
  inputBinding:
    prefix: --delta_comp
- id: delta_cont
  doc: 'maximum increase in contamination to report pair (default: 10.0)'
  type: string
  inputBinding:
    prefix: --delta_cont
- id: merged_comp
  doc: 'minimum merged completeness to report pair (default: 50.0)'
  type: string
  inputBinding:
    prefix: --merged_comp
- id: merged_cont
  doc: 'maximum merged contamination to report pair (default: 20.0)'
  type: string
  inputBinding:
    prefix: --merged_cont
- id: extension
  doc: 'extension of bins (other files in directory are ignored) (default: fna)'
  type: string
  inputBinding:
    prefix: --extension
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
- id: marker_file
  doc: marker file to use for assessing potential bin mergers (marker set or HMM file)
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
- merge
