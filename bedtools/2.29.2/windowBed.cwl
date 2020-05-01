#!/usr/bin/env cwl-runner

baseCommand:
- windowBed
class: CommandLineTool
cwlVersion: v1.0
id: windowbed
inputs:
- doc: The A input file is in BAM format.  Output will be BAM as well. Replaces -a.
  id: a_bam
  inputBinding:
    prefix: -abam
  type: boolean
- doc: Write uncompressed BAM output. Default writes compressed BAM.
  id: ub_am
  inputBinding:
    prefix: -ubam
  type: boolean
- doc: When using BAM input (-abam), write output as BED. The default is to write
    output in BAM when using -abam.
  id: bed
  inputBinding:
    prefix: -bed
  type: boolean
- doc: Base pairs added upstream and downstream of each entry in A when searching
    for overlaps in B. - Creates symmetrical "windows" around A. - Default is 1000
    bp. - (INTEGER)
  id: w
  inputBinding:
    prefix: -w
  type: boolean
- doc: Base pairs added upstream (left of) of each entry in A when searching for overlaps
    in B. - Allows one to define asymmetrical "windows". - Default is 1000 bp. - (INTEGER)
  id: l
  inputBinding:
    prefix: -l
  type: boolean
- doc: Base pairs added downstream (right of) of each entry in A when searching for
    overlaps in B. - Allows one to define asymmetrical "windows". - Default is 1000
    bp. - (INTEGER)
  id: r
  inputBinding:
    prefix: -r
  type: boolean
- doc: Define -l and -r based on strand.  For example if used, -l 500 for a negative-stranded
    feature will add 500 bp downstream. - Default = disabled.
  id: sw
  inputBinding:
    prefix: -sw
  type: boolean
- doc: Only report hits in B that overlap A on the _same_ strand. - By default, overlaps
    are reported without respect to strand.
  id: sm
  inputBinding:
    prefix: -sm
  type: boolean
- doc: Only report hits in B that overlap A on the _opposite_ strand. - By default,
    overlaps are reported without respect to strand.
  id: sm
  inputBinding:
    prefix: -Sm
  type: boolean
- doc: Write the original A entry _once_ if _any_ overlaps found in B. - In other
    words, just report the fact >=1 hit was found.
  id: u
  inputBinding:
    prefix: -u
  type: boolean
- doc: For each entry in A, report the number of overlaps with B. - Reports 0 for
    A entries that have no overlap with B. - Overlaps restricted by -w, -l, and -r.
  id: c
  inputBinding:
    prefix: -c
  type: boolean
- doc: Only report those entries in A that have _no overlaps_ with B. - Similar to
    "grep -v."
  id: v
  inputBinding:
    prefix: -v
  type: boolean
- doc: the header from the A file prior to results.
  id: header
  inputBinding:
    prefix: -header
  type: string
