#!/usr/bin/env cwl-runner

baseCommand:
- subread-align
class: CommandLineTool
cwlVersion: v1.0
id: subread-align
inputs:
- doc: Base name of the index.
  id: i
  inputBinding:
    prefix: -i
  type: string
- doc: Name of an input read file. If paired-end, this should be the first read file
    (typically containing "R1"in the file name) and the second should be provided
    via "-R". Acceptable formats include gzipped FASTQ, FASTQ, gzipped FASTA and FASTA.
    These formats are identified automatically.
  id: r
  inputBinding:
    prefix: -r
  type: string
- doc: 'Type of input sequencing data. Its values include 0: RNA-seq data 1: genomic
    DNA-seq data.'
  id: t
  inputBinding:
    prefix: -t
  type: long
- doc: Name of an output file. By default, the output is in BAM format. Omitting this
    option makes the output be written to STDOUT.
  id: o
  inputBinding:
    prefix: -o
  type: string
- doc: Name of the second read file in paired-end data (typically containing "R2"
    the file name).
  id: r
  inputBinding:
    prefix: -R
  type: string
- doc: Input reads are in SAM format.
  id: sam_input
  inputBinding:
    prefix: --SAMinput
  type: boolean
- doc: Input reads are in BAM format.
  id: bam_input
  inputBinding:
    prefix: --BAMinput
  type: boolean
- doc: Save mapping results in SAM format.
  id: sam_output
  inputBinding:
    prefix: --SAMoutput
  type: boolean
- doc: <3:6>          Offset value added to the Phred quality score of each read base.
    '3' for phred+33 and '6' for phred+64. '3' by default.
  id: p
  inputBinding:
    prefix: -P
  type: boolean
- doc: Number of selected subreads, 10 by default.
  id: n
  inputBinding:
    prefix: -n
  type: long
- doc: Consensus threshold for reporting a hit (minimal number of subreads that map
    in consensus) . If paired-end, this gives the consensus threshold for the anchor
    read (anchor read receives more votes than the other read in the same pair). 3
    by default
  id: m
  inputBinding:
    prefix: -m
  type: long
- doc: Consensus threshold for the non- anchor read in a pair. 1 by default.
  id: p
  inputBinding:
    prefix: -p
  type: long
- doc: Maximum number of mis-matched bases allowed in each reported alignment. 3 by
    default. Mis-matched bases found in soft- clipped bases are not counted.
  id: m
  inputBinding:
    prefix: -M
  type: long
- doc: Report multi-mapping reads in addition to uniquely mapped reads. Use "-B" to
    set the maximum number of equally-best alignments to be reported.
  id: multi_mapping
  inputBinding:
    prefix: --multiMapping
  type: boolean
- doc: Maximum number of equally-best alignments to be reported for a multi-mapping
    read. Equally-best alignments have the same number of mis-matched bases. 1 by
    default.
  id: b
  inputBinding:
    prefix: -B
  type: long
- doc: Maximum length (in bp) of indels that can be detected. 5 by default. Indels
    of up to 200bp long can be detected.
  id: i
  inputBinding:
    prefix: -I
  type: long
- doc: Detect multiple short indels that are in close proximity (they can be as close
    as 1bp apart from each other).
  id: complex_indels
  inputBinding:
    prefix: --complexIndels
  type: boolean
- doc: Trim off <int> number of bases from 5' end of each read. 0 by default.
  id: trim5
  inputBinding:
    prefix: --trim5
  type: long
- doc: Trim off <int> number of bases from 3' end of each read. 0 by default.
  id: trim3
  inputBinding:
    prefix: --trim3
  type: long
- doc: Minimum fragment/insert length, 50bp by default.
  id: d
  inputBinding:
    prefix: -d
  type: long
- doc: Maximum fragment/insert length, 600bp by default.
  id: d
  inputBinding:
    prefix: -D
  type: long
- doc: <ff:fr:rf>     Orientation of first and second reads, 'fr' by default ( forward/reverse).
  id: s
  inputBinding:
    prefix: -S
  type: boolean
- doc: Number of CPU threads used, 1 by default.
  id: t
  inputBinding:
    prefix: -T
  type: long
- doc: Add read group ID to the output.
  id: rg_id
  inputBinding:
    prefix: --rg-id
  type: string
- doc: Add <tag:value> to the read group (RG) header in the output.
  id: rg
  inputBinding:
    prefix: --rg
  type: string
- doc: Convert color-space read bases to base-space read bases in the mapping output.
    Note that read mapping is performed at color-space.
  id: b
  inputBinding:
    prefix: -b
  type: boolean
- doc: Score for matched bases in short indel detection. 2 by default.
  id: dp_match
  inputBinding:
    prefix: --DPMatch
  type: long
- doc: Detect structural variants (eg. long indel, inversion, duplication and translocation)
    and report breakpoints. Refer to Users Guide for breakpoint reporting.
  id: sv
  inputBinding:
    prefix: --sv
  type: boolean
- doc: Output version of the program.
  id: v
  inputBinding:
    prefix: -v
  type: boolean
