class: CommandLineTool
id: ../../../kmer_mask.cwl
inputs:
- id: mdb
  doc: load masking kmers from meryl 'mer-database'
  type: string
  inputBinding:
    prefix: -mdb
- id: ms
  doc: mer-size          the mer size used to generate the meryl database
  type: boolean
  inputBinding:
    prefix: -ms
- id: edb
  doc: save masking kmers to 'exist-database', and reuse on future runs (optional)
  type: string
  inputBinding:
    prefix: -edb
- id: input_reads_fastqbz
  doc: input reads - fastq, fastq.gz, fastq.bz2 or fastq.xz
  type: string
  inputBinding:
    prefix: '-1'
- id: optional_mated_reads
  doc: '- optional, for mated reads'
  type: string
  inputBinding:
    prefix: '-2'
- id: maximum_length_input
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
- id: prefix_output_reads
  doc: 'prefix                output reads: prefix.clean.[12].fastq  - clean (unmasked)
    reads prefix.murky.[12].fastq  - reads in between prefix.match.[12].fastq  - matching
    (masked) reads prefix.mixed.[12].fastq  - reads with conflicting status (for mated
    reads)'
  type: boolean
  inputBinding:
    prefix: -o
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
