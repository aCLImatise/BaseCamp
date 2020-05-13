class: CommandLineTool
id: bedtools_window.cwl
inputs:
- id: a_bam
  doc: The A input file is in BAM format.  Output will be BAM as well. Replaces -a.
  type: boolean
  inputBinding:
    prefix: -abam
- id: ub_am
  doc: Write uncompressed BAM output. Default writes compressed BAM.
  type: boolean
  inputBinding:
    prefix: -ubam
- id: bed
  doc: When using BAM input (-abam), write output as BED. The default is to write
    output in BAM when using -abam.
  type: boolean
  inputBinding:
    prefix: -bed
- id: w
  doc: Base pairs added upstream and downstream of each entry in A when searching
    for overlaps in B. - Creates symmetrical "windows" around A. - Default is 1000
    bp. - (INTEGER)
  type: boolean
  inputBinding:
    prefix: -w
- id: l
  doc: Base pairs added upstream (left of) of each entry in A when searching for overlaps
    in B. - Allows one to define asymmetrical "windows". - Default is 1000 bp. - (INTEGER)
  type: boolean
  inputBinding:
    prefix: -l
- id: r
  doc: Base pairs added downstream (right of) of each entry in A when searching for
    overlaps in B. - Allows one to define asymmetrical "windows". - Default is 1000
    bp. - (INTEGER)
  type: boolean
  inputBinding:
    prefix: -r
- id: sw
  doc: Define -l and -r based on strand.  For example if used, -l 500 for a negative-stranded
    feature will add 500 bp downstream. - Default = disabled.
  type: boolean
  inputBinding:
    prefix: -sw
- id: sm
  doc: Only report hits in B that overlap A on the _same_ strand. - By default, overlaps
    are reported without respect to strand.
  type: boolean
  inputBinding:
    prefix: -sm
- id: sm
  doc: Only report hits in B that overlap A on the _opposite_ strand. - By default,
    overlaps are reported without respect to strand.
  type: boolean
  inputBinding:
    prefix: -Sm
- id: u
  doc: Write the original A entry _once_ if _any_ overlaps found in B. - In other
    words, just report the fact >=1 hit was found.
  type: boolean
  inputBinding:
    prefix: -u
- id: c
  doc: For each entry in A, report the number of overlaps with B. - Reports 0 for
    A entries that have no overlap with B. - Overlaps restricted by -w, -l, and -r.
  type: boolean
  inputBinding:
    prefix: -c
- id: v
  doc: Only report those entries in A that have _no overlaps_ with B. - Similar to
    "grep -v."
  type: boolean
  inputBinding:
    prefix: -v
- id: header
  doc: the header from the A file prior to results.
  type: string
  inputBinding:
    prefix: -header
outputs: []
cwlVersion: v1.1
baseCommand:
- bedtools
- window
