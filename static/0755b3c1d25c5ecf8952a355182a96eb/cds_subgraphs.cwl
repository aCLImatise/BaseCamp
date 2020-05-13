class: CommandLineTool
id: cds_subgraphs.cwl
inputs:
- id: output_folder
  doc: output folder to use for GFA files
  type: string
  inputBinding:
    prefix: --output-folder
- id: part_desc
  doc: file with partial genes description (.gff)
  type: File
  inputBinding:
    prefix: --part-desc
- id: part_seq
  doc: file with partial genes sequences (.fasta)
  type: File
  inputBinding:
    prefix: --part-seq
- id: graph
  doc: In GFA (ending with .gfa) or prefix to SPAdes graph pack
  type: string
  inputBinding:
    prefix: --graph
- id: cds_len_est
  doc: file with cds length estimamtes
  type: File
  inputBinding:
    prefix: --cds-len-est
- id: k
  doc: k-mer length to use
  type: string
  inputBinding:
    prefix: -k
- id: threads
  doc: '# of threads to use (default: max_threads / 2)'
  type: string
  inputBinding:
    prefix: --threads
- id: tmpdir
  doc: 'scratch directory to use (default: <outdir>/tmp)'
  type: string
  inputBinding:
    prefix: --tmpdir
outputs: []
cwlVersion: v1.1
baseCommand:
- cds-subgraphs
