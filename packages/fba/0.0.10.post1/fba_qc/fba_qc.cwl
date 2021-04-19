class: CommandLineTool
id: fba_qc.cwl
inputs:
- id: in_read_one
  doc: specify fastq file for read 1
  type: long?
  inputBinding:
    prefix: --read1
- id: in_read_two
  doc: "specify fastq file for read 2. If only read 2 file is\nprovided, bulk mode\
    \ is enabled (skipping arguments\n'-1', ' -w', '-cb_m', '-r1_coords', must provide\n\
    '-r2_coords' and '-fb_m'). In bulk mode, reads 2 will\nbe searched against reference\
    \ feature barcodes and\nread count for each feature barcode will be summarized"
  type: long?
  inputBinding:
    prefix: --read2
- id: in_whitelist
  doc: specify a whitelist of accepted cell barcodes
  type: string?
  inputBinding:
    prefix: --whitelist
- id: in_feature_ref
  doc: specify a reference of feature barcodes
  type: string?
  inputBinding:
    prefix: --feature_ref
- id: in_read_one_coords
  doc: "specify coordinates 'start,end' of read 1 to search\n(doesn't need to be the\
    \ exact expected barcode range).\nThe default is to use all the nucleotide bases.\n\
    Nucleotide bases outside the range will be masked as\nlower case in output"
  type: long?
  inputBinding:
    prefix: --read1_coords
- id: in_read_two_coords
  doc: see '-r1_coords'
  type: long?
  inputBinding:
    prefix: --read2_coords
- id: in_cb_mismatches
  doc: "specify cell barcode mismatching threshold. Default\n(3)"
  type: long?
  inputBinding:
    prefix: --cb_mismatches
- id: in_fb_mismatches
  doc: "specify feature barcode mismatching threshold. Default\n(3)"
  type: long?
  inputBinding:
    prefix: --fb_mismatches
- id: in_cb_num_n_threshold
  doc: "specify maximum number of ambiguous nucleotides\nallowed for read 1. The default\
    \ is no limit"
  type: long?
  inputBinding:
    prefix: --cb_num_n_threshold
- id: in_fb_num_n_threshold
  doc: "specify maximum number of ambiguous nucleotides\nallowed for read 2. The default\
    \ is no limit"
  type: long?
  inputBinding:
    prefix: --fb_num_n_threshold
- id: in_threads
  doc: "specify number of threads for barcode extraction.\nDefault is to use all available"
  type: long?
  inputBinding:
    prefix: --threads
- id: in_num_reads
  doc: "specify number of reads for analysis. Set to (None)\nwill analyze all the\
    \ reads. Default (100,000)"
  type: long?
  inputBinding:
    prefix: --num_reads
- id: in_chunk_size
  doc: "specify the chunk size for multiprocessing. Default\n(50,000)"
  type: long?
  inputBinding:
    prefix: --chunk_size
- id: in_output_directory
  doc: "specify a output directory. Default (./qc)\n"
  type: Directory?
  inputBinding:
    prefix: --output_directory
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_directory
  doc: "specify a output directory. Default (./qc)\n"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_directory)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/fba:0.0.10.post1--pyhdfd78af_0
cwlVersion: v1.1
baseCommand:
- fba
- qc
