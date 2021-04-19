class: CommandLineTool
id: fba_extract.cwl
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
- id: in_read_two_coords
  doc: see '-r1_coords'
  type: long?
  inputBinding:
    prefix: --read2_coords
- id: in_cb_mismatches
  doc: "specify cell barcode mismatching threshold. Default\n(1)"
  type: long?
  inputBinding:
    prefix: --cb_mismatches
- id: in_fb_mismatches
  doc: "specify feature barcode mismatching threshold. Default\n(1)"
  type: long?
  inputBinding:
    prefix: --fb_mismatches
- id: in_cb_num_n_threshold
  doc: "specify maximum number of ambiguous nucleotides\nallowed for read 1. Default\
    \ (3)"
  type: long?
  inputBinding:
    prefix: --cb_num_n_threshold
- id: in_fb_num_n_threshold
  doc: "specify maximum number of ambiguous nucleotides\nallowed for read 2. Default\
    \ (3)\n"
  type: long?
  inputBinding:
    prefix: --fb_num_n_threshold
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: specify an output file
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/fba:0.0.10.post1--pyhdfd78af_0
cwlVersion: v1.1
baseCommand:
- fba
- extract
