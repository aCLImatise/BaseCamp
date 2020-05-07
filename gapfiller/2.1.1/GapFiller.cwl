class: CommandLineTool
id: GapFiller.cwl
inputs:
- id: k
  doc: 'length of the word used to hash (default: 12)'
  type: string
  inputBinding:
    prefix: --k
- id: block_length
  doc: 'length of perfect match (default: 15)'
  type: string
  inputBinding:
    prefix: --block-length
- id: output_prefix
  doc: 'output files prefix (default: "GapFiller_output")'
  type: string
  inputBinding:
    prefix: --output-prefix
- id: gz
  doc: compress output with gzip
  type: boolean
  inputBinding:
    prefix: --gz
- id: bz2
  doc: compress output with bzip2
  type: boolean
  inputBinding:
    prefix: --bz2
- id: seed1
  doc: seed1 fasta file (can be compressed with gzip or bzip2, or a pipe)
  type: string
  inputBinding:
    prefix: --seed1
- id: seed2
  doc: seed2 fasta file (can be compressed with gzip or bzip2, or a pipe)
  type: string
  inputBinding:
    prefix: --seed2
- id: seed_sam
  doc: seed sam file sorted by ID, with header (sam or bam  format; can be repeated
    multiple times)
  type: string
  inputBinding:
    prefix: --seed-sam
- id: query
  doc: 'query fasta file: use different reads for extension  instead of seeds (can
    be compressed with gzip or bzip2, or a pipe)'
  type: string
  inputBinding:
    prefix: --query
- id: query_sam
  doc: 'query sam file: use different reads for extension  instead of sam seeds (sam
    or bam format; can be  repeated multiple times)'
  type: string
  inputBinding:
    prefix: --query-sam
- id: seed_ins
  doc: seed reads insert size
  type: string
  inputBinding:
    prefix: --seed-ins
- id: seed_var
  doc: seed reads insert variation
  type: string
  inputBinding:
    prefix: --seed-var
- id: store_layout
  doc: 'store contigs layout (default: false)'
  type: boolean
  inputBinding:
    prefix: --store-layout
- id: overlap
  doc: 'minimum suffix-prefix overlap (default: 30)'
  type: string
  inputBinding:
    prefix: --overlap
- id: mismatch_rate
  doc: 'maximum number of mismatches every 100 bp (default: 5)'
  type: string
  inputBinding:
    prefix: --mismatch-rate
- id: ext_threshold
  doc: 'number of reads needed to extend a contig (default: 2)'
  type: string
  inputBinding:
    prefix: --extThreshold
- id: limit
  doc: limits the number of extended reads (useful for tests)
  type: string
  inputBinding:
    prefix: --limit
- id: no_read_cycle
  doc: 'allow reads to be used multiple times within the same  contig (default: false)'
  type: boolean
  inputBinding:
    prefix: --no-read-cycle
- id: mate_pairs
  doc: 'default: paired-ends'
  type: boolean
  inputBinding:
    prefix: --mate-pairs
- id: verbose
  doc: print a lot of information! Use with --limit option
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- GapFiller
