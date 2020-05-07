class: CommandLineTool
id: snaptools_index_genome.cwl
inputs:
- id: input_fast_a
  doc: 'genome fasta file to build the index from (default: None)'
  type: string
  inputBinding:
    prefix: --input-fasta
- id: output_prefix
  doc: 'prefix of indexed file (default: None)'
  type: string
  inputBinding:
    prefix: --output-prefix
- id: aligner
  doc: 'aligner to use. Currently, snaptools supports bwa, bowtie, bowtie2 and minimap2.
    (default: bwa)'
  type: string
  inputBinding:
    prefix: --aligner
- id: path_to_aligner
  doc: 'path to fold that contains bwa (default: None)'
  type: File
  inputBinding:
    prefix: --path-to-aligner
- id: num_threads
  doc: '=number of indexing threads (default: 3)'
  type: string
  inputBinding:
    prefix: --num-threads
outputs: []
cwlVersion: v1.1
baseCommand:
- snaptools
- index-genome
