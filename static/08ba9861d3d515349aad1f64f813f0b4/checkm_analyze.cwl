class: CommandLineTool
id: ../../../checkm_analyze.cwl
inputs:
- id: ali
  doc: generate HMMER alignment file for each bin
  type: boolean
  inputBinding:
    prefix: --ali
- id: nt
  doc: generate nucleotide gene sequences for each bin
  type: boolean
  inputBinding:
    prefix: --nt
- id: genes
  doc: bins contain genes as amino acids instead of nucleotide contigs
  type: boolean
  inputBinding:
    prefix: --genes
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
- id: tmpdir
  doc: specify an alternative directory for temporary files
  type: string
  inputBinding:
    prefix: --tmpdir
- id: marker_file
  doc: markers for assessing bins (marker set or HMM file)
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
- analyze
