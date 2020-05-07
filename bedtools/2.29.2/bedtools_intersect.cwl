class: CommandLineTool
id: bedtools_intersect.cwl
inputs:
- id: wa
  doc: Write the original entry in A for each overlap.
  type: boolean
  inputBinding:
    prefix: -wa
- id: wb
  doc: Write the original entry in B for each overlap. - Useful for knowing _what_
    A overlaps. Restricted by -f and -r.
  type: boolean
  inputBinding:
    prefix: -wb
- id: lo_j
  doc: Perform a "left outer join". That is, for each feature in A report each overlap
    with B.  If no overlaps are found,  report a NULL feature for B.
  type: boolean
  inputBinding:
    prefix: -loj
- id: wo
  doc: Write the original A and B entries plus the number of base pairs of overlap
    between the two features. - Overlaps restricted by -f and -r. Only A features
    with overlap are reported.
  type: boolean
  inputBinding:
    prefix: -wo
- id: wao
  doc: Write the original A and B entries plus the number of base pairs of overlap
    between the two features. - Overlapping features restricted by -f and -r. However,
    A features w/o overlap are also reported with a NULL B feature and overlap = 0.
  type: boolean
  inputBinding:
    prefix: -wao
- id: u
  doc: Write the original A entry _once_ if _any_ overlaps found in B. - In other
    words, just report the fact >=1 hit was found. - Overlaps restricted by -f and
    -r.
  type: boolean
  inputBinding:
    prefix: -u
- id: c
  doc: For each entry in A, report the number of overlaps with B. - Reports 0 for
    A entries that have no overlap with B. - Overlaps restricted by -f, -F, -r, and
    -s.
  type: boolean
  inputBinding:
    prefix: -c
- id: c
  doc: For each entry in A, separately report the number of - overlaps with each B
    file on a distinct line. - Reports 0 for A entries that have no overlap with B.
    - Overlaps restricted by -f, -F, -r, and -s.
  type: boolean
  inputBinding:
    prefix: -C
- id: v
  doc: Only report those entries in A that have _no overlaps_ with B. - Similar to
    "grep -v" (an homage).
  type: boolean
  inputBinding:
    prefix: -v
- id: ub_am
  doc: Write uncompressed BAM output. Default writes compressed BAM.
  type: boolean
  inputBinding:
    prefix: -ubam
- id: s
  doc: Require same strandedness.  That is, only report hits in B that overlap A on
    the _same_ strand. - By default, overlaps are reported without respect to strand.
  type: boolean
  inputBinding:
    prefix: -s
- id: s
  doc: Require different strandedness.  That is, only report hits in B that overlap
    A on the _opposite_ strand. - By default, overlaps are reported without respect
    to strand.
  type: boolean
  inputBinding:
    prefix: -S
- id: f
  doc: Minimum overlap required as a fraction of A. - Default is 1E-9 (i.e., 1bp).
    - FLOAT (e.g. 0.50)
  type: boolean
  inputBinding:
    prefix: -f
- id: f
  doc: Minimum overlap required as a fraction of B. - Default is 1E-9 (i.e., 1bp).
    - FLOAT (e.g. 0.50)
  type: boolean
  inputBinding:
    prefix: -F
- id: r
  doc: Require that the fraction overlap be reciprocal for A AND B. - In other words,
    if -f is 0.90 and -r is used, this requires that B overlap 90% of A and A _also_
    overlaps 90% of B.
  type: boolean
  inputBinding:
    prefix: -r
- id: e
  doc: Require that the minimum fraction be satisfied for A OR B. - In other words,
    if -e is used with -f 0.90 and -F 0.10 this requires that either 90% of A is covered
    OR 10% of  B is covered. Without -e, both fractions would have to be satisfied.
  type: boolean
  inputBinding:
    prefix: -e
- id: split
  doc: Treat "split" BAM or BED12 entries as distinct BED intervals.
  type: boolean
  inputBinding:
    prefix: -split
- id: g
  doc: Provide a genome file to enforce consistent chromosome sort order across input
    files. Only applies when used with -sorted option.
  type: boolean
  inputBinding:
    prefix: -g
- id: no_name_check
  doc: For sorted data, don't throw an error if the file has different naming conventions
    for the same chromosome. ex. "chr1" vs "chr01".
  type: boolean
  inputBinding:
    prefix: -nonamecheck
- id: sorted
  doc: the "chromsweep" algorithm for sorted (-k1,1 -k2,2n) input.
  type: string
  inputBinding:
    prefix: -sorted
- id: names
  doc: When using multiple databases, provide an alias for each that will appear instead
    of a fileId when also printing the DB record.
  type: boolean
  inputBinding:
    prefix: -names
- id: filenames
  doc: When using multiple databases, show each complete filename instead of a fileId
    when also printing the DB record.
  type: boolean
  inputBinding:
    prefix: -filenames
- id: sort_out
  doc: When using multiple databases, sort the output DB hits for each record.
  type: boolean
  inputBinding:
    prefix: -sortout
- id: bed
  doc: If using BAM input, write output as BED.
  type: boolean
  inputBinding:
    prefix: -bed
- id: header
  doc: the header from the A file prior to results.
  type: string
  inputBinding:
    prefix: -header
- id: no_buf
  doc: Disable buffered output. Using this option will cause each line of output to
    be printed as it is generated, rather than saved in a buffer. This will make printing
    large output files  noticeably slower, but can be useful in conjunction with other
    software tools and scripts that need to process one line of bedtools output at
    a time.
  type: boolean
  inputBinding:
    prefix: -nobuf
- id: i_obuf
  doc: 'Specify amount of memory to use for input buffer. Takes an integer argument.
    Optional suffixes K/M/G supported. Note: currently has no effect with compressed
    files.'
  type: boolean
  inputBinding:
    prefix: -iobuf
outputs: []
cwlVersion: v1.1
baseCommand:
- bedtools
- intersect
