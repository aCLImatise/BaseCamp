class: CommandLineTool
id: subread_align.cwl
inputs:
- id: i
  doc: Base name of the index.
  type: string
  inputBinding:
    prefix: -i
- id: r
  doc: Name of an input read file. If paired-end, this should be the first read file
    (typically containing "R1"in the file name) and the second should be provided
    via "-R". Acceptable formats include gzipped FASTQ, FASTQ, gzipped FASTA and FASTA.
    These formats are identified automatically.
  type: string
  inputBinding:
    prefix: -r
- id: t
  doc: 'Type of input sequencing data. Its values include 0: RNA-seq data 1: genomic
    DNA-seq data.'
  type: long
  inputBinding:
    prefix: -t
- id: o
  doc: Name of an output file. By default, the output is in BAM format. Omitting this
    option makes the output be written to STDOUT.
  type: string
  inputBinding:
    prefix: -o
- id: r
  doc: Name of the second read file in paired-end data (typically containing "R2"
    the file name).
  type: string
  inputBinding:
    prefix: -R
- id: sam_input
  doc: Input reads are in SAM format.
  type: boolean
  inputBinding:
    prefix: --SAMinput
- id: bam_input
  doc: Input reads are in BAM format.
  type: boolean
  inputBinding:
    prefix: --BAMinput
- id: sam_output
  doc: Save mapping results in SAM format.
  type: boolean
  inputBinding:
    prefix: --SAMoutput
- id: p
  doc: <3:6>          Offset value added to the Phred quality score of each read base.
    '3' for phred+33 and '6' for phred+64. '3' by default.
  type: boolean
  inputBinding:
    prefix: -P
- id: n
  doc: Number of selected subreads, 10 by default.
  type: long
  inputBinding:
    prefix: -n
- id: m
  doc: Consensus threshold for reporting a hit (minimal number of subreads that map
    in consensus) . If paired-end, this gives the consensus threshold for the anchor
    read (anchor read receives more votes than the other read in the same pair). 3
    by default
  type: long
  inputBinding:
    prefix: -m
- id: p
  doc: Consensus threshold for the non- anchor read in a pair. 1 by default.
  type: long
  inputBinding:
    prefix: -p
- id: m
  doc: Maximum number of mis-matched bases allowed in each reported alignment. 3 by
    default. Mis-matched bases found in soft- clipped bases are not counted.
  type: long
  inputBinding:
    prefix: -M
- id: multi_mapping
  doc: Report multi-mapping reads in addition to uniquely mapped reads. Use "-B" to
    set the maximum number of equally-best alignments to be reported.
  type: boolean
  inputBinding:
    prefix: --multiMapping
- id: b
  doc: Maximum number of equally-best alignments to be reported for a multi-mapping
    read. Equally-best alignments have the same number of mis-matched bases. 1 by
    default.
  type: long
  inputBinding:
    prefix: -B
- id: i
  doc: Maximum length (in bp) of indels that can be detected. 5 by default. Indels
    of up to 200bp long can be detected.
  type: long
  inputBinding:
    prefix: -I
- id: complex_indels
  doc: Detect multiple short indels that are in close proximity (they can be as close
    as 1bp apart from each other).
  type: boolean
  inputBinding:
    prefix: --complexIndels
- id: trim5
  doc: Trim off <int> number of bases from 5' end of each read. 0 by default.
  type: long
  inputBinding:
    prefix: --trim5
- id: trim3
  doc: Trim off <int> number of bases from 3' end of each read. 0 by default.
  type: long
  inputBinding:
    prefix: --trim3
- id: d
  doc: Minimum fragment/insert length, 50bp by default.
  type: long
  inputBinding:
    prefix: -d
- id: d
  doc: Maximum fragment/insert length, 600bp by default.
  type: long
  inputBinding:
    prefix: -D
- id: s
  doc: <ff:fr:rf>     Orientation of first and second reads, 'fr' by default ( forward/reverse).
  type: boolean
  inputBinding:
    prefix: -S
- id: t
  doc: Number of CPU threads used, 1 by default.
  type: long
  inputBinding:
    prefix: -T
- id: rg_id
  doc: Add read group ID to the output.
  type: string
  inputBinding:
    prefix: --rg-id
- id: rg
  doc: Add <tag:value> to the read group (RG) header in the output.
  type: string
  inputBinding:
    prefix: --rg
- id: b
  doc: Convert color-space read bases to base-space read bases in the mapping output.
    Note that read mapping is performed at color-space.
  type: boolean
  inputBinding:
    prefix: -b
- id: dp_match
  doc: Score for matched bases in short indel detection. 2 by default.
  type: long
  inputBinding:
    prefix: --DPMatch
- id: sv
  doc: Detect structural variants (eg. long indel, inversion, duplication and translocation)
    and report breakpoints. Refer to Users Guide for breakpoint reporting.
  type: boolean
  inputBinding:
    prefix: --sv
- id: v
  doc: Output version of the program.
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- subread-align
