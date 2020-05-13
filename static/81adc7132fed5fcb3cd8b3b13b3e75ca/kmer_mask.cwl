class: CommandLineTool
id: kmer_mask.cwl
inputs:
- id: o
  doc: "out                output reads: out.fullymasked.[12].fastq      - reads with\
    \ below 'lowthreshold' bases retained out.partiallymasked.[12].fastq  - reads\
    \ in between out.retained.[12].fastq         - reads with more than 'hightreshold'\
    \ bases retained out.discarded.[12].fastq        - reads with conflicting status"
  type: boolean
  inputBinding:
    prefix: -o
- id: m
  doc: ignore database hits below this many consecutive kmers (0)
  type: long
  inputBinding:
    prefix: -m
- id: e
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
- id: low_threshold
  doc: (0.3333)
  type: string
  inputBinding:
    prefix: -lowthreshold
- id: high_threshold
  doc: (0.6667)
  type: string
  inputBinding:
    prefix: -highthreshold
- id: h
  doc: write a histogram of the amount of sequence RETAINED
  type: string
  inputBinding:
    prefix: -h
- id: t
  doc: use 't' compute threads
  type: string
  inputBinding:
    prefix: -t
- id: v
  doc: show progress
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- kmer-mask
