#!/usr/bin/env cwl-runner

baseCommand:
- pairToBed
class: CommandLineTool
cwlVersion: v1.0
id: pairtobed
inputs:
- doc: The A input file is in BAM format.  Output will be BAM as well. Replaces -a.
    - Requires BAM to be grouped or sorted by query.
  id: a_bam
  inputBinding:
    prefix: -abam
  type: boolean
- doc: Write uncompressed BAM output. Default writes compressed BAM. is to write output
    in BAM when using -abam.
  id: ub_am
  inputBinding:
    prefix: -ubam
  type: boolean
- doc: When using BAM input (-abam), write output as BEDPE. The default is to write
    output in BAM when using -abam.
  id: bed_pe
  inputBinding:
    prefix: -bedpe
  type: boolean
- doc: Use BAM total edit distance (NM tag) for BEDPE score. - Default for BEDPE is
    to use the minimum of of the two mapping qualities for the pair. - When -ed is
    used the total edit distance from the two mates is reported as the score.
  id: ed
  inputBinding:
    prefix: -ed
  type: boolean
- doc: Minimum overlap required as fraction of A (e.g. 0.05). Default is 1E-9 (effectively
    1bp).
  id: f
  inputBinding:
    prefix: -f
  type: boolean
- doc: Require same strandedness when finding overlaps. Default is to ignore stand.
    Not applicable with -type inspan or -type outspan.
  id: s
  inputBinding:
    prefix: -s
  type: boolean
- doc: Require different strandedness when finding overlaps. Default is to ignore
    stand. Not applicable with -type inspan or -type outspan.
  id: s
  inputBinding:
    prefix: -S
  type: boolean
- doc: "Approach to reporting overlaps between BEDPE and BED. either  Report overlaps\
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
  id: type
  inputBinding:
    prefix: -type
  type: boolean
