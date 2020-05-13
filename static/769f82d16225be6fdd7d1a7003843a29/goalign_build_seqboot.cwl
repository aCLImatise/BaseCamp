class: CommandLineTool
id: goalign_build_seqboot.cwl
inputs:
- id: flags
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: gz
  doc: Will gzip output file(s). Maybe slow if combined with --tar (only one thread
    working for tar/gz)
  type: boolean
  inputBinding:
    prefix: --gz
- id: n_boot
  doc: Number of bootstrap replicates to build (default 1)
  type: long
  inputBinding:
    prefix: --nboot
- id: out_partition
  doc: 'File containing output partitions (default: same name as input partition with
    _boot suffix)'
  type: string
  inputBinding:
    prefix: --out-partition
- id: out_prefix
  doc: Prefix of output bootstrap files (default "none")
  type: string
  inputBinding:
    prefix: --out-prefix
- id: partition
  doc: File containing definition of the partitions (default "none")
  type: string
  inputBinding:
    prefix: --partition
- id: s_huf_order
  doc: Also shuffle order of sequences in bootstrap files
  type: boolean
  inputBinding:
    prefix: --shuf-order
- id: tar
  doc: Will create a single tar file with all bootstrap alignments (one thread for
    tar, but not a bottleneck)
  type: boolean
  inputBinding:
    prefix: --tar
- id: align
  doc: Alignment input file (default "stdin")
  type: string
  inputBinding:
    prefix: --align
- id: auto_detect
  doc: Auto detects input format (overrides -p, -x and -u)
  type: boolean
  inputBinding:
    prefix: --auto-detect
- id: clustal
  doc: Alignment is in clustal? default fasta
  type: boolean
  inputBinding:
    prefix: --clustal
- id: ignore_identical
  doc: Ignore duplicated sequences that have the same name and same sequences
  type: boolean
  inputBinding:
    prefix: --ignore-identical
- id: input_strict
  doc: Strict phylip input format (only used with -p)
  type: boolean
  inputBinding:
    prefix: --input-strict
- id: nexus
  doc: Alignment is in nexus? default fasta
  type: boolean
  inputBinding:
    prefix: --nexus
- id: no_block
  doc: Write Phylip sequences without space separated blocks (only used with -p)
  type: boolean
  inputBinding:
    prefix: --no-block
- id: one_line
  doc: Write Phylip sequences on 1 line (only used with -p)
  type: boolean
  inputBinding:
    prefix: --one-line
- id: output_strict
  doc: Strict phylip output format (only used with -p)
  type: boolean
  inputBinding:
    prefix: --output-strict
- id: phylip
  doc: Alignment is in phylip? default fasta
  type: boolean
  inputBinding:
    prefix: --phylip
- id: seed
  doc: 'Random Seed: -1 = nano seconds since 1970/01/01 00:00:00 (default -1)'
  type: long
  inputBinding:
    prefix: --seed
- id: threads
  doc: Number of threads (default 1)
  type: long
  inputBinding:
    prefix: --threads
outputs: []
cwlVersion: v1.1
baseCommand:
- goalign
- build
- seqboot
