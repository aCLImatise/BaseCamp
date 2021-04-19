class: CommandLineTool
id: fba_map.cwl
inputs:
- id: in_read_one
  doc: specify fastq file for read 1
  type: long?
  inputBinding:
    prefix: --read1
- id: in_read_two
  doc: specify fastq file for read 2
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
- id: in_output
  doc: specify an output file
  type: File?
  inputBinding:
    prefix: --output
- id: in_read_one_coords
  doc: "specify coordinates 'start,end' of read 1 to search.\nFor example, '0,16':\
    \ starts at 0, stops at 15.\nNucleotide bases outside the range will be masked\
    \ as\nlower case in output. Default (0,16)"
  type: long?
  inputBinding:
    prefix: --read1_coords
- id: in_cb_mismatches
  doc: "specify cell barcode mismatching threshold. Default\n(1)"
  type: long?
  inputBinding:
    prefix: --cb_mismatches
- id: in_cb_num_n_threshold
  doc: "specify maximum number of ambiguous nucleotides\nallowed for read 1. Default\
    \ (3)"
  type: long?
  inputBinding:
    prefix: --cb_num_n_threshold
- id: in_aligner
  doc: specify aligner for read 2. Default (bwa)
  type: string?
  inputBinding:
    prefix: --aligner
- id: in_mapping_quality
  doc: "specify minimal mapping quality required for feature\nmapping. Default (10)"
  type: long?
  inputBinding:
    prefix: --mapping_quality
- id: in_umi_start
  doc: "specify expected UMI starting postion on read 1.\nDefault (16)"
  type: long?
  inputBinding:
    prefix: --umi_start
- id: in_umi_length
  doc: "specify the length of UMIs on read 1. Reads with UMI\nlength less than this\
    \ value will be discarded. Default\n(12)"
  type: long?
  inputBinding:
    prefix: --umi_length
- id: in_umi_mismatches
  doc: "specify the maximun edit distance allowed for UMIs on\nread 1 for deduplication.\
    \ Default (1)"
  type: long?
  inputBinding:
    prefix: --umi_mismatches
- id: in_umi_de_duplication_method
  doc: "specify UMI deduplication method (powered by UMI-\ntools. Smith, T., et al.\
    \ 2017). Default (directional)"
  type: string?
  inputBinding:
    prefix: --umi_deduplication_method
- id: in_output_directory
  doc: specify a temp directory. Default (./barcode_mapping)
  type: Directory?
  inputBinding:
    prefix: --output_directory
- id: in_threads
  doc: "specify number of threads to launch. The default is to\nuse all available"
  type: long?
  inputBinding:
    prefix: --threads
- id: in_num_n_ref
  doc: "specify the number of Ns to separate sequences\nbelonging to the same feature.\
    \ Default (0)\n"
  type: long?
  inputBinding:
    prefix: --num_n_ref
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: specify an output file
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
- id: out_output_directory
  doc: specify a temp directory. Default (./barcode_mapping)
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_directory)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/fba:0.0.10.post1--pyhdfd78af_0
cwlVersion: v1.1
baseCommand:
- fba
- map
