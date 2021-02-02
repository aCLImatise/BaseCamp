class: CommandLineTool
id: ../../../novolrcorrector.cwl
inputs:
- id: in_in
  doc: the input BAM file [stdin]
  type: File
  inputBinding:
    prefix: -in
- id: in_out
  doc: "the output file as alternative\nto stdout. [stdout]"
  type: File
  inputBinding:
    prefix: -out
- id: in_region
  doc: "genomic region\n(chr:99..[chr:]999). Index file is\nrecommended for better\
    \ performance, and is\nused automatically if it exists. See\n'bamtools help index'\
    \ for more details on\ncreating one"
  type: File
  inputBinding:
    prefix: -region
- id: in_fast_a
  doc: "Original Pacbio FASTA reads\nfile as used in alignment process."
  type: File
  inputBinding:
    prefix: -fasta
- id: in_use
  doc: "Fraction of alignments to use\nwhen calling a consensus base. Chooses the\n\
    alignments with the lowest Alignment Score\nplus Single End Penalty. [0.3300]"
  type: long
  inputBinding:
    prefix: -use
- id: in_at_least
  doc: "Use at least this many\nalignments if fraction rule would use less\nalignments.\
    \ [4]"
  type: long
  inputBinding:
    prefix: -atLeast
- id: in_at_most
  doc: "Don't use more this many\nalignments even if fraction rule would use\nmore\
    \ alignments. [50]"
  type: long
  inputBinding:
    prefix: -atMost
- id: in_min_cover
  doc: "Only correct if we have at\nleast this many alignments. [2]"
  type: long
  inputBinding:
    prefix: -minCover
- id: in_se_penalty
  doc: "Penalty applied to improper\npairs and single end reads when ranking\nalignments.\
    \ [70]"
  type: long
  inputBinding:
    prefix: -sePenalty
- id: in_full_lr
  doc: "Output full length of Long\nRead read including uncorrected bases.\nDefault\
    \ trims uncorrected ends of reads."
  type: boolean
  inputBinding:
    prefix: -fullLR
- id: in_sv_split
  doc: "Split Reads at locii not\ncovered by a proper pair. Default is not\nto split\
    \ the reads."
  type: boolean
  inputBinding:
    prefix: -SVSplit
- id: in_uncorrected_lr
  doc: "Output all Long Reads\nincluding those with no alignments.\nDefault is to\
    \ skip output of reads with no\nalignments."
  type: boolean
  inputBinding:
    prefix: -uncorrectedLR
- id: in_fq
  doc: "Output is in FASTQ, Default is\nFASTA format."
  type: boolean
  inputBinding:
    prefix: -fq
- id: in_base_q
  doc: "Assumed phred scaled base\nquality for input fasta. [10]"
  type: long
  inputBinding:
    prefix: -baseq
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: "the output file as alternative\nto stdout. [stdout]"
  type: File
  outputBinding:
    glob: $(inputs.in_out)
cwlVersion: v1.1
baseCommand:
- novolrcorrector
