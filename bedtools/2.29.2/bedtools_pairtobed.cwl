class: CommandLineTool
id: bedtools_pairtobed.cwl
inputs:
- id: a_bam
  doc: The A input file is in BAM format.  Output will be BAM as well. Replaces -a.
    - Requires BAM to be grouped or sorted by query.
  type: boolean
  inputBinding:
    prefix: -abam
- id: ub_am
  doc: Write uncompressed BAM output. Default writes compressed BAM. is to write output
    in BAM when using -abam.
  type: boolean
  inputBinding:
    prefix: -ubam
- id: bed_pe
  doc: When using BAM input (-abam), write output as BEDPE. The default is to write
    output in BAM when using -abam.
  type: boolean
  inputBinding:
    prefix: -bedpe
- id: ed
  doc: Use BAM total edit distance (NM tag) for BEDPE score. - Default for BEDPE is
    to use the minimum of of the two mapping qualities for the pair. - When -ed is
    used the total edit distance from the two mates is reported as the score.
  type: boolean
  inputBinding:
    prefix: -ed
- id: f
  doc: Minimum overlap required as fraction of A (e.g. 0.05). Default is 1E-9 (effectively
    1bp).
  type: boolean
  inputBinding:
    prefix: -f
- id: s
  doc: Require same strandedness when finding overlaps. Default is to ignore stand.
    Not applicable with -type inspan or -type outspan.
  type: boolean
  inputBinding:
    prefix: -s
- id: s
  doc: Require different strandedness when finding overlaps. Default is to ignore
    stand. Not applicable with -type inspan or -type outspan.
  type: boolean
  inputBinding:
    prefix: -S
- id: type
  doc: "Approach to reporting overlaps between BEDPE and BED. either  Report overlaps\
    \ if either end of A overlaps B. - Default. neither Report A if neither end of\
    \ A overlaps B. both    Report overlaps if both ends of A overlap  B. xor    \
    \ Report overlaps if one and only one end of A overlaps B. notboth Report overlaps\
    \ if neither end or one and only one  end of A overlap B.  That is, xor + neither.\
    \ ispan   Report overlaps between [end1, start2] of A and B. - Note: If chrom1\
    \ <> chrom2, entry is ignored. ospan   Report overlaps between [start1, end2]\
    \ of A and B. - Note: If chrom1 <> chrom2, entry is ignored. notispan        Report\
    \ A if ispan of A doesn't overlap B. - Note: If chrom1 <> chrom2, entry is ignored.\
    \ notospan        Report A if ospan of A doesn't overlap B. - Note: If chrom1\
    \ <> chrom2, entry is ignored."
  type: boolean
  inputBinding:
    prefix: -type
outputs: []
cwlVersion: v1.1
baseCommand:
- bedtools
- pairtobed
