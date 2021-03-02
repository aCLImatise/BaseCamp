class: CommandLineTool
id: GapFiller.cwl
inputs:
- id: in_length_word_used
  doc: 'length of the word used to hash (default: 12)'
  type: long?
  inputBinding:
    prefix: --k
- id: in_block_length
  doc: 'length of perfect match (default: 15)'
  type: long?
  inputBinding:
    prefix: --block-length
- id: in_output_prefix
  doc: 'output files prefix (default: "GapFiller_output")'
  type: string?
  inputBinding:
    prefix: --output-prefix
- id: in_gz
  doc: compress output with gzip
  type: boolean?
  inputBinding:
    prefix: --gz
- id: in_bz_two
  doc: compress output with bzip2
  type: boolean?
  inputBinding:
    prefix: --bz2
- id: in_see_done
  doc: "seed1 fasta file (can be compressed with gzip or bzip2,\nor a pipe)"
  type: long?
  inputBinding:
    prefix: --seed1
- id: in_seed_two
  doc: "seed2 fasta file (can be compressed with gzip or bzip2,\nor a pipe)"
  type: long?
  inputBinding:
    prefix: --seed2
- id: in_seed_sam
  doc: "seed sam file sorted by ID, with header (sam or bam\nformat; can be repeated\
    \ multiple times)"
  type: File?
  inputBinding:
    prefix: --seed-sam
- id: in_query
  doc: "query fasta file: use different reads for extension\ninstead of seeds (can\
    \ be compressed with gzip or bzip2,\nor a pipe)"
  type: File?
  inputBinding:
    prefix: --query
- id: in_query_sam
  doc: "query sam file: use different reads for extension\ninstead of sam seeds (sam\
    \ or bam format; can be\nrepeated multiple times)"
  type: File?
  inputBinding:
    prefix: --query-sam
- id: in_seed_ins
  doc: seed reads insert size
  type: long?
  inputBinding:
    prefix: --seed-ins
- id: in_seed_var
  doc: seed reads insert variation
  type: string?
  inputBinding:
    prefix: --seed-var
- id: in_store_layout
  doc: 'store contigs layout (default: false)'
  type: boolean?
  inputBinding:
    prefix: --store-layout
- id: in_overlap
  doc: 'minimum suffix-prefix overlap (default: 30)'
  type: long?
  inputBinding:
    prefix: --overlap
- id: in_mismatch_rate
  doc: 'maximum number of mismatches every 100 bp (default: 5)'
  type: long?
  inputBinding:
    prefix: --mismatch-rate
- id: in_ext_threshold
  doc: 'number of reads needed to extend a contig (default: 2)'
  type: long?
  inputBinding:
    prefix: --extThreshold
- id: in_limit
  doc: limits the number of extended reads (useful for tests)
  type: long?
  inputBinding:
    prefix: --limit
- id: in_no_read_cycle
  doc: "allow reads to be used multiple times within the same\ncontig (default: false)"
  type: boolean?
  inputBinding:
    prefix: --no-read-cycle
- id: in_mate_pairs
  doc: 'default: paired-ends'
  type: boolean?
  inputBinding:
    prefix: --mate-pairs
- id: in_verbose
  doc: print a lot of information! Use with --limit option
  type: boolean?
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/gapfiller:2.1.2--h176a8bc_1
cwlVersion: v1.1
baseCommand:
- GapFiller
