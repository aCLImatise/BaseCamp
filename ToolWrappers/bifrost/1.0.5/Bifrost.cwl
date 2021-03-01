class: CommandLineTool
id: Bifrost.cwl
inputs:
- id: in_input_seq_file
  doc: "Input sequence file (FASTA/FASTQ possibly gzipped)\nMultiple files can be\
    \ provided as a list in a TXT file (one file per line)\nK-mers with exactly 1\
    \ occurrence in the input sequence files will be discarded"
  type: boolean?
  inputBinding:
    prefix: --input-seq-file
- id: in_input_ref_file
  doc: "Input reference file (FASTA/FASTQ possibly gzipped and GFA)\nMultiple files\
    \ can be provided as a list in a TXT file (one file per line)\nAll k-mers of the\
    \ input reference files are used"
  type: boolean?
  inputBinding:
    prefix: --input-ref-file
- id: in_output_file
  doc: Prefix for output file(s)
  type: File?
  inputBinding:
    prefix: --output-file
- id: in_threads
  doc: Number of threads (default is 1)
  type: boolean?
  inputBinding:
    prefix: --threads
- id: in_km_er_length
  doc: Length of k-mers (default is 31)
  type: boolean?
  inputBinding:
    prefix: --kmer-length
- id: in_min_length
  doc: Length of minimizers (default is automatically chosen)
  type: boolean?
  inputBinding:
    prefix: --min-length
- id: in_bloom_bits
  doc: Number of Bloom filter bits per k-mer with 1+ occurrences in the input files
    (default is 14)
  type: boolean?
  inputBinding:
    prefix: --bloom-bits
- id: in_bloom_bits_two
  doc: Number of Bloom filter bits per k-mer with 2+ occurrences in the input files
    (default is 14)
  type: boolean?
  inputBinding:
    prefix: --bloom-bits2
- id: in_load_mb_bf
  doc: Input Blocked Bloom Filter file, skips filtering step (default is no input)
  type: boolean?
  inputBinding:
    prefix: --load-mbbf
- id: in_write_mb_bf
  doc: Output Blocked Bloom Filter file (default is no output)
  type: File?
  inputBinding:
    prefix: --write-mbbf
- id: in_chunk_size
  doc: Read chunk size per thread (default is 64)
  type: boolean?
  inputBinding:
    prefix: --chunk-size
- id: in_colors
  doc: Color the compacted de Bruijn graph (default is no coloring)
  type: boolean?
  inputBinding:
    prefix: --colors
- id: in_keep_mercy
  doc: Keep low coverage k-mers connecting tips
  type: boolean?
  inputBinding:
    prefix: --keep-mercy
- id: in_clip_tips
  doc: Clip tips shorter than k k-mers in length
  type: boolean?
  inputBinding:
    prefix: --clip-tips
- id: in_del_isolated
  doc: Delete isolated contigs shorter than k k-mers in length
  type: boolean?
  inputBinding:
    prefix: --del-isolated
- id: in_fast_a
  doc: Output file is in FASTA format (only sequences) instead of GFA
  type: File?
  inputBinding:
    prefix: --fasta
- id: in_verbose
  doc: Print information messages during execution
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_input_graph_file
  doc: Input graph file to update (GFA format)
  type: boolean?
  inputBinding:
    prefix: --input-graph-file
- id: in_input_color_file
  doc: Input color file associated with the input graph file to update
  type: boolean?
  inputBinding:
    prefix: --input-color-file
- id: in_input_query_file
  doc: "Input query file (FASTA/FASTQ possibly gzipped)\nMultiple files can be provided\
    \ as a list in a TXT file (one file per line)"
  type: boolean?
  inputBinding:
    prefix: --input-query-file
- id: in_ratio_km_ers
  doc: Ratio of k-mers from queries that must occur in the graph (default is 0.8)
  type: boolean?
  inputBinding:
    prefix: --ratio-kmers
- id: in_in_exact
  doc: Graph is searched with exact and inexact k-mers (1 substitution or indel) from
    queries
  type: boolean?
  inputBinding:
    prefix: --inexact
- id: in_build_compacted_graph
  doc: Build a compacted de Bruijn graph, with or without colors
  type: string
  inputBinding:
    position: 0
- id: in_update_compacted_graph
  doc: Update a compacted (possible colored) de Bruijn graph with new sequences
  type: string
  inputBinding:
    position: 1
- id: in_query_compacted_graph
  doc: Query a compacted (possible colored) de Bruijn graph
  type: string
  inputBinding:
    position: 2
- id: in_var_25
  doc: '> Mandatory with required argument:'
  type: string
  inputBinding:
    position: 0
- id: in_var_26
  doc: '> Mandatory with required argument:'
  type: string
  inputBinding:
    position: 0
- id: in_var_27
  doc: '> Mandatory with required argument:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: Prefix for output file(s)
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file)
- id: out_write_mb_bf
  doc: Output Blocked Bloom Filter file (default is no output)
  type: File?
  outputBinding:
    glob: $(inputs.in_write_mb_bf)
- id: out_fast_a
  doc: Output file is in FASTA format (only sequences) instead of GFA
  type: File?
  outputBinding:
    glob: $(inputs.in_fast_a)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/bifrost:1.0.5--h8b12597_0
cwlVersion: v1.1
baseCommand:
- Bifrost
