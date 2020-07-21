class: CommandLineTool
id: ../../../kmer_mask.cwl
inputs:
- id: mdb
  doc: load masking kmers from meryl 'mer-database'
  type: string
  inputBinding:
    prefix: -mdb
- id: ms
  doc: 'mer-size          '
  type: boolean
  inputBinding:
    prefix: -ms
- id: edb
  doc: save masking kmers to 'exist-database' for faster restarts
  type: string
  inputBinding:
    prefix: -edb
- id: input_reads_fastqbz
  doc: input reads - fastq, fastq.gz, fastq.bz2 or fastq.xz
  type: string
  inputBinding:
    prefix: '-1'
- id: optional_present_messes
  doc: '- (optional, but if not present, messes up the output classification)'
  type: string
  inputBinding:
    prefix: '-2'
- id: out_output_reads
  doc: "out                output reads: out.fullymasked.[12].fastq      - reads with\
    \ below 'lowthreshold' bases retained out.partiallymasked.[12].fastq  - reads\
    \ in between out.retained.[12].fastq         - reads with more than 'hightreshold'\
    \ bases retained out.discarded.[12].fastq        - reads with conflicting status"
  type: boolean
  inputBinding:
    prefix: -o
- id: ignore_database_hits
  doc: ignore database hits below this many consecutive kmers (0)
  type: long
  inputBinding:
    prefix: -m
- id: extend_database_hits
  doc: extend database hits across this many missing kmers (0)
  type: string
  inputBinding:
    prefix: -e
- id: novel
  doc: RETAIN novel sequence not present in the database
  type: boolean
  inputBinding:
    prefix: -novel
- id: confirmed
  doc: RETAIN confirmed sequence present in the database
  type: boolean
  inputBinding:
    prefix: -confirmed
- id: promote
  doc: promote the lesser RETAINED read to the status of the more RETAINED read read1=fullymasked
    and read2=partiallymasked -> both are partiallymasked
  type: boolean
  inputBinding:
    prefix: -promote
- id: demote
  doc: demote the more RETAINED read to the status of the lesser RETAINED read read1=fullymasked
    and read2=partiallymasked -> both are fullymasked
  type: boolean
  inputBinding:
    prefix: -demote
- id: discard
  doc: discard pairs with conflicting status (DEFAULT) read1=fullymasked and read2=partiallymasked
    -> both are discarded
  type: boolean
  inputBinding:
    prefix: -discard
- id: unlink
  doc: leave conflicting status alone; mate pairing will be broken
  type: boolean
  inputBinding:
    prefix: -unlink
- id: no_masking
  doc: classify reads as normal, but do not trim masked sequence; output the full
    original read
  type: boolean
  inputBinding:
    prefix: -nomasking
- id: write_histogram_retained
  doc: write a histogram of the amount of sequence RETAINED
  type: string
  inputBinding:
    prefix: -h
- id: use_compute_threads
  doc: use 't' compute threads
  type: string
  inputBinding:
    prefix: -t
- id: show_progress
  doc: show progress
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- kmer-mask
