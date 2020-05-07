class: CommandLineTool
id: novolrcorrector.cwl
inputs:
- id: novo_craft
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: long
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: read
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: correct_or
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: format_specific
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in
  doc: the input BAM file [stdin]
  type: string
  inputBinding:
    prefix: -in
- id: out
  doc: the output file as alternative to stdout. [stdout]
  type: File
  inputBinding:
    prefix: -out
- id: region
  doc: genomic region (chr:99..[chr:]999). Index file is recommended for better performance,
    and is used automatically if it exists. See 'bamtools help index' for more details
    on creating one
  type: string
  inputBinding:
    prefix: -region
- id: fast_a
  doc: Original Pacbio FASTA reads file as used in alignment process.
  type: string
  inputBinding:
    prefix: -fasta
- id: use
  doc: <0.0 to 1.0>                 Fraction of alignments to use when calling a consensus
    base. Chooses the alignments with the lowest Alignment Score plus Single End Penalty.
    [0.3300]
  type: boolean
  inputBinding:
    prefix: -use
- id: at_least
  doc: Use at least this many alignments if fraction rule would use less alignments.
    [4]
  type: string
  inputBinding:
    prefix: -atLeast
- id: at_most
  doc: Don't use more this many alignments even if fraction rule would use more alignments.
    [50]
  type: string
  inputBinding:
    prefix: -atMost
- id: min_cover
  doc: Only correct if we have at least this many alignments. [2]
  type: string
  inputBinding:
    prefix: -minCover
- id: se_penalty
  doc: Penalty applied to improper pairs and single end reads when ranking alignments.
    [70]
  type: string
  inputBinding:
    prefix: -sePenalty
- id: full_lr
  doc: Output full length of Long Read read including uncorrected bases. Default trims
    uncorrected ends of reads.
  type: boolean
  inputBinding:
    prefix: -fullLR
- id: sv_split
  doc: Split Reads at locii not covered by a proper pair. Default is not to split
    the reads.
  type: boolean
  inputBinding:
    prefix: -SVSplit
- id: uncorrected_lr
  doc: Output all Long Reads including those with no alignments. Default is to skip
    output of reads with no alignments.
  type: boolean
  inputBinding:
    prefix: -uncorrectedLR
- id: fq
  doc: Output is in FASTQ, Default is FASTA format.
  type: boolean
  inputBinding:
    prefix: -fq
- id: base_q
  doc: Assumed phred scaled base quality for input fasta. [10]
  type: string
  inputBinding:
    prefix: -baseq
outputs: []
cwlVersion: v1.1
baseCommand:
- novolrcorrector
