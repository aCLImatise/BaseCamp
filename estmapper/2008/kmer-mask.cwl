#!/usr/bin/env cwl-runner

baseCommand:
- kmer-mask
class: CommandLineTool
cwlVersion: v1.0
id: kmer-mask
inputs:
- doc: "out                output reads: out.fullymasked.[12].fastq      - reads with\
    \ below 'lowthreshold' bases retained out.partiallymasked.[12].fastq  - reads\
    \ in between out.retained.[12].fastq         - reads with more than 'hightreshold'\
    \ bases retained out.discarded.[12].fastq        - reads with conflicting status"
  id: o
  inputBinding:
    prefix: -o
  type: boolean
- doc: ignore database hits below this many consecutive kmers (0)
  id: m
  inputBinding:
    prefix: -m
  type: long
- doc: extend database hits across this many missing kmers (0)
  id: e
  inputBinding:
    prefix: -e
  type: string
- doc: RETAIN novel sequence not present in the database
  id: novel
  inputBinding:
    prefix: -novel
  type: boolean
- doc: RETAIN confirmed sequence present in the database
  id: confirmed
  inputBinding:
    prefix: -confirmed
  type: boolean
- doc: promote the lesser RETAINED read to the status of the more RETAINED read read1=fullymasked
    and read2=partiallymasked -> both are partiallymasked
  id: promote
  inputBinding:
    prefix: -promote
  type: boolean
- doc: demote the more RETAINED read to the status of the lesser RETAINED read read1=fullymasked
    and read2=partiallymasked -> both are fullymasked
  id: demote
  inputBinding:
    prefix: -demote
  type: boolean
- doc: discard pairs with conflicting status (DEFAULT) read1=fullymasked and read2=partiallymasked
    -> both are discarded
  id: discard
  inputBinding:
    prefix: -discard
  type: boolean
- doc: leave conflicting status alone; mate pairing will be broken
  id: unlink
  inputBinding:
    prefix: -unlink
  type: boolean
- doc: classify reads as normal, but do not trim masked sequence; output the full
    original read
  id: no_masking
  inputBinding:
    prefix: -nomasking
  type: boolean
- doc: (0.3333)
  id: low_threshold
  inputBinding:
    prefix: -lowthreshold
  type: string
- doc: (0.6667)
  id: high_threshold
  inputBinding:
    prefix: -highthreshold
  type: string
- doc: write a histogram of the amount of sequence RETAINED
  id: h
  inputBinding:
    prefix: -h
  type: string
- doc: use 't' compute threads
  id: t
  inputBinding:
    prefix: -t
  type: string
- doc: show progress
  id: v
  inputBinding:
    prefix: -v
  type: boolean
