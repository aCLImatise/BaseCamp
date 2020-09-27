class: CommandLineTool
id: kmer_mask.cwl
inputs:
- id: in_mdb
  doc: load masking kmers from meryl 'mer-database'
  type: string
  inputBinding:
    prefix: -mdb
- id: in_ms
  doc: mer-size
  type: boolean
  inputBinding:
    prefix: -ms
- id: in_edb
  doc: save masking kmers to 'exist-database' for faster restarts
  type: string
  inputBinding:
    prefix: -edb
- id: in_input_reads_fastqbz
  doc: input reads - fastq, fastq.gz, fastq.bz2 or fastq.xz
  type: long
  inputBinding:
    prefix: '-1'
- id: in_optional_present_messes
  doc: '- (optional, but if not present, messes up the output classification)'
  type: long
  inputBinding:
    prefix: '-2'
- id: in_output_readsoutfullymaskedfastq_reads
  doc: "out                output reads:\nout.fullymasked.[12].fastq      - reads\
    \ with below 'lowthreshold' bases retained\nout.partiallymasked.[12].fastq  -\
    \ reads in between\nout.retained.[12].fastq         - reads with more than 'hightreshold'\
    \ bases retained\nout.discarded.[12].fastq        - reads with conflicting status"
  type: boolean
  inputBinding:
    prefix: -o
- id: in_ignore_database_hits
  doc: ignore database hits below this many consecutive kmers (0)
  type: long
  inputBinding:
    prefix: -m
- id: in_extend_database_hits
  doc: extend database hits across this many missing kmers (0)
  type: long
  inputBinding:
    prefix: -e
- id: in_novel
  doc: RETAIN novel sequence not present in the database
  type: boolean
  inputBinding:
    prefix: -novel
- id: in_confirmed
  doc: RETAIN confirmed sequence present in the database
  type: boolean
  inputBinding:
    prefix: -confirmed
- id: in_promote
  doc: "promote the lesser RETAINED read to the status of the more RETAINED read\n\
    read1=fullymasked and read2=partiallymasked -> both are partiallymasked"
  type: boolean
  inputBinding:
    prefix: -promote
- id: in_demote
  doc: "demote the more RETAINED read to the status of the lesser RETAINED read\n\
    read1=fullymasked and read2=partiallymasked -> both are fullymasked"
  type: boolean
  inputBinding:
    prefix: -demote
- id: in_discard
  doc: "discard pairs with conflicting status (DEFAULT)\nread1=fullymasked and read2=partiallymasked\
    \ -> both are discarded"
  type: boolean
  inputBinding:
    prefix: -discard
- id: in_unlink
  doc: leave conflicting status alone; mate pairing will be broken
  type: boolean
  inputBinding:
    prefix: -unlink
- id: in_no_masking
  doc: classify reads as normal, but do not trim masked sequence; output the full
    original read
  type: boolean
  inputBinding:
    prefix: -nomasking
- id: in_write_histogram_amount
  doc: write a histogram of the amount of sequence RETAINED
  type: string
  inputBinding:
    prefix: -h
- id: in_use_compute_threads
  doc: use 't' compute threads
  type: string
  inputBinding:
    prefix: -t
- id: in_show_progress
  doc: show progress
  type: boolean
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- kmer-mask
