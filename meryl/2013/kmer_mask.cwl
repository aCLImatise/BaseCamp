class: CommandLineTool
id: kmer_mask.cwl
inputs:
- id: l
  doc: maximum length of input read (512) If too small, program will fail. If too
    large, program will use excessive memory.
  type: long
  inputBinding:
    prefix: -l
- id: cleaner
  doc: use the cleaner classification of the two reads
  type: boolean
  inputBinding:
    prefix: -cleaner
- id: dirtier
  doc: use the dirtier classification of the two reads
  type: boolean
  inputBinding:
    prefix: -dirtier
- id: discard
  doc: discard pairs with conflicting classifications (DEFAULT)
  type: boolean
  inputBinding:
    prefix: -discard
- id: unlink
  doc: 'leave conflicting status alone, output reads to different files NOTE: mate
    pairing will be broken'
  type: boolean
  inputBinding:
    prefix: -unlink
- id: no_masking
  doc: do not trim masked sequence; output the original read
  type: boolean
  inputBinding:
    prefix: -nomasking
- id: o
  doc: 'prefix                output reads: prefix.clean.[12].fastq  - clean (unmasked)
    reads prefix.murky.[12].fastq  - reads in between prefix.match.[12].fastq  - matching
    (masked) reads prefix.mixed.[12].fastq  - reads with conflicting status (for mated
    reads)'
  type: boolean
  inputBinding:
    prefix: -o
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
