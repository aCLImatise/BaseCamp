class: CommandLineTool
id: kmds.cwl
inputs:
- id: in_arg_dsm_kmer
  doc: '[ --kmers ] arg       dsm kmer output file (not needed if using'
  type: File
  inputBinding:
    prefix: -k
- id: in_arg_pheno_metadata
  doc: '[ --pheno ] arg       .pheno metadata'
  type: boolean
  inputBinding:
    prefix: -p
- id: in_arg_output_prefix
  doc: '[ --output ] arg      output prefix for new dsm file'
  type: File
  inputBinding:
    prefix: -o
- id: in_no_mds
  doc: do not perform MDS; output subsampled matrix instead
  type: boolean
  inputBinding:
    prefix: --no_mds
- id: in_write_distances
  doc: write csv of distance matrix
  type: boolean
  inputBinding:
    prefix: --write_distances
- id: in_mds_concat
  doc: "list of subsampled matrices to use in MDS. Performs\nonly MDS; implies --no_filtering"
  type: string
  inputBinding:
    prefix: --mds_concat
- id: in_pc
  doc: (=10)           number of principal coordinates to output
  type: long
  inputBinding:
    prefix: --pc
- id: in_size
  doc: (=1000000)    number of kmers to use in MDS
  type: long
  inputBinding:
    prefix: --size
- id: in_threads
  doc: '(=1)       number of threads. Suggested: 8'
  type: long
  inputBinding:
    prefix: --threads
- id: in_no_filtering
  doc: turn off all filtering and do not output new kmer
  type: boolean
  inputBinding:
    prefix: --no_filtering
- id: in_maf
  doc: (=0.01)        minimum kmer frequency
  type: double
  inputBinding:
    prefix: --maf
- id: in_min_words
  doc: minimum kmer occurences. Overrides --maf
  type: string
  inputBinding:
    prefix: --min_words
- id: in_file
  doc: --max_length arg (=100)  maximum kmer length
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_arg_dsm_kmer
  doc: '[ --kmers ] arg       dsm kmer output file (not needed if using'
  type: File
  outputBinding:
    glob: $(inputs.in_arg_dsm_kmer)
- id: out_arg_output_prefix
  doc: '[ --output ] arg      output prefix for new dsm file'
  type: File
  outputBinding:
    glob: $(inputs.in_arg_output_prefix)
cwlVersion: v1.1
baseCommand:
- kmds
