class: CommandLineTool
id: snaptools_index_genome.cwl
inputs:
- id: in_input_fast_a
  doc: "genome fasta file to build the index from (default:\nNone)"
  type: File?
  inputBinding:
    prefix: --input-fasta
- id: in_output_prefix
  doc: 'prefix of indexed file (default: None)'
  type: File?
  inputBinding:
    prefix: --output-prefix
- id: in_aligner
  doc: "aligner to use. Currently, snaptools supports bwa,\nbowtie, bowtie2 and minimap2.\
    \ (default: bwa)"
  type: long?
  inputBinding:
    prefix: --aligner
- id: in_path_to_aligner
  doc: 'path to fold that contains bwa (default: None)'
  type: File?
  inputBinding:
    prefix: --path-to-aligner
- id: in_num_threads
  doc: "=number of indexing threads (default: 3)\n"
  type: long?
  inputBinding:
    prefix: --num-threads
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- snaptools
- index-genome
