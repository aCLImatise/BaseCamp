class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/spindex.cwl
inputs:
- id: display_version_information
  doc: '[ --version ]             display version information'
  type: boolean
  inputBinding:
    prefix: -v
- id: arg_kmer_size
  doc: '[ --kmersize ] arg (=8)   K-mer size'
  type: boolean
  inputBinding:
    prefix: -k
- id: arg_path_fasta
  doc: '[ --database ] arg        path to the fasta format reference sequence  database'
  type: boolean
  inputBinding:
    prefix: -d
- id: arg_number_processor
  doc: '[ --processors ] arg (=1) number of processor threads'
  type: boolean
  inputBinding:
    prefix: -p
outputs: []
cwlVersion: v1.1
baseCommand:
- spindex
