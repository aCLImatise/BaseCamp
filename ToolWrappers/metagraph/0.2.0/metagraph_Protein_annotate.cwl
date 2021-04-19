class: CommandLineTool
id: metagraph_Protein_annotate.cwl
inputs:
- id: in_min_count
  doc: '[INT]    min k-mer abundance, including [1]'
  type: boolean?
  inputBinding:
    prefix: --min-count
- id: in_max_count
  doc: '[INT]    max k-mer abundance, excluding [inf]'
  type: boolean?
  inputBinding:
    prefix: --max-count
- id: in_reference
  doc: '[STR]    basename of reference sequence (for parsing VCF files) []'
  type: boolean?
  inputBinding:
    prefix: --reference
- id: in_an_no_type
  doc: '[STR]    target annotation representation: column / row [column]'
  type: boolean?
  inputBinding:
    prefix: --anno-type
- id: in_annotator
  doc: '[STR]    annotator to update []'
  type: boolean?
  inputBinding:
    prefix: --annotator
- id: in_sparse
  doc: use the row-major sparse matrix to annotate graph [off]
  type: boolean?
  inputBinding:
    prefix: --sparse
- id: in_cache
  doc: number of columns in cache (for column representation only) [10]
  type: boolean?
  inputBinding:
    prefix: --cache
- id: in_disk_swap
  doc: '[STR]    directory to use for temporary files [off]'
  type: boolean?
  inputBinding:
    prefix: --disk-swap
- id: in_mem_cap_gb
  doc: '[FLOAT] buffer size in GB (per column in construction) [1]'
  type: boolean?
  inputBinding:
    prefix: --mem-cap-gb
- id: in_outfile_base
  doc: '[STR] basename of output file (or directory, for --separately) []'
  type: File?
  inputBinding:
    prefix: --outfile-base
- id: in_separately
  doc: annotate each file independently and dump to the same directory [off]
  type: boolean?
  inputBinding:
    prefix: --separately
- id: in_sequentially
  doc: annotate files sequentially (each may use multiple threads) [off]
  type: boolean?
  inputBinding:
    prefix: --sequentially
- id: in_an_no_filename
  doc: include filenames as annotation labels [off]
  type: boolean?
  inputBinding:
    prefix: --anno-filename
- id: in_an_no_header
  doc: extract annotation labels from headers of sequences in files [off]
  type: boolean?
  inputBinding:
    prefix: --anno-header
- id: in_header_comment_delim
  doc: '[STR] delimiter for joining fasta header with comment [off]'
  type: boolean?
  inputBinding:
    prefix: --header-comment-delim
- id: in_header_delimiter
  doc: '[STR]     delimiter for splitting annotation header into multiple labels [off]'
  type: boolean?
  inputBinding:
    prefix: --header-delimiter
- id: in_an_no_label
  doc: '[STR]           add label to annotation for all sequences from the files passed
    []'
  type: boolean?
  inputBinding:
    prefix: --anno-label
- id: in_anchors
  doc: '[STR]              location of the anchor file (for row_diff) []'
  type: boolean?
  inputBinding:
    prefix: --anchors
- id: in_count_km_ers
  doc: add k-mer counts to the annotation [off]
  type: boolean?
  inputBinding:
    prefix: --count-kmers
- id: in_parallel
  doc: '[INT]     use multiple threads for computation [1]'
  type: boolean?
  inputBinding:
    prefix: --parallel
- id: in_verbose
  doc: switch on verbose output [off]
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_i
  doc: ''
  type: string?
  inputBinding:
    prefix: -i
- id: in_file_one
  doc: ''
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outfile_base
  doc: '[STR] basename of output file (or directory, for --separately) []'
  type: File?
  outputBinding:
    glob: $(inputs.in_outfile_base)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/metagraph:0.2.0--h74b8f77_0
cwlVersion: v1.1
baseCommand:
- metagraph_Protein
- annotate
