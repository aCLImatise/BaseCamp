#!/usr/bin/env cwl-runner

baseCommand:
- novolrcorrector
class: CommandLineTool
cwlVersion: v1.0
id: novolrcorrector
inputs:
- doc: ''
  id: novo_craft
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: long
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: read
  inputBinding:
    position: 2
  type: string
- doc: ''
  id: correct_or
  inputBinding:
    position: 3
  type: string
- doc: ''
  id: format_specific
  inputBinding:
    position: 4
  type: string
- doc: the input BAM file [stdin]
  id: in
  inputBinding:
    prefix: -in
  type: string
- doc: the output file as alternative to stdout. [stdout]
  id: out
  inputBinding:
    prefix: -out
  type: File
- doc: genomic region (chr:99..[chr:]999). Index file is recommended for better performance,
    and is used automatically if it exists. See 'bamtools help index' for more details
    on creating one
  id: region
  inputBinding:
    prefix: -region
  type: string
- doc: Original Pacbio FASTA reads file as used in alignment process.
  id: fast_a
  inputBinding:
    prefix: -fasta
  type: string
- doc: <0.0 to 1.0>                 Fraction of alignments to use when calling a consensus
    base. Chooses the alignments with the lowest Alignment Score plus Single End Penalty.
    [0.3300]
  id: use
  inputBinding:
    prefix: -use
  type: boolean
- doc: Use at least this many alignments if fraction rule would use less alignments.
    [4]
  id: at_least
  inputBinding:
    prefix: -atLeast
  type: string
- doc: Don't use more this many alignments even if fraction rule would use more alignments.
    [50]
  id: at_most
  inputBinding:
    prefix: -atMost
  type: string
- doc: Only correct if we have at least this many alignments. [2]
  id: min_cover
  inputBinding:
    prefix: -minCover
  type: string
- doc: Penalty applied to improper pairs and single end reads when ranking alignments.
    [70]
  id: se_penalty
  inputBinding:
    prefix: -sePenalty
  type: string
- doc: Output full length of Long Read read including uncorrected bases. Default trims
    uncorrected ends of reads.
  id: full_lr
  inputBinding:
    prefix: -fullLR
  type: boolean
- doc: Split Reads at locii not covered by a proper pair. Default is not to split
    the reads.
  id: sv_split
  inputBinding:
    prefix: -SVSplit
  type: boolean
- doc: Output all Long Reads including those with no alignments. Default is to skip
    output of reads with no alignments.
  id: uncorrected_lr
  inputBinding:
    prefix: -uncorrectedLR
  type: boolean
- doc: Output is in FASTQ, Default is FASTA format.
  id: fq
  inputBinding:
    prefix: -fq
  type: boolean
- doc: Assumed phred scaled base quality for input fasta. [10]
  id: base_q
  inputBinding:
    prefix: -baseq
  type: string
