class: CommandLineTool
id: bedtools_closest.cwl
inputs:
- id: d
  doc: In addition to the closest feature in B,  report its distance to A as an extra
    column. - The reported distance for overlapping features will be 0.
  type: boolean
  inputBinding:
    prefix: -d
- id: d
  doc: 'Like -d, report the closest feature in B, and its distance to A as an extra
    column. Unlike -d, use negative distances to report upstream features. The options
    for defining which orientation is "upstream" are: - "ref"   Report distance with
    respect to the reference genome.  B features with a lower (start, stop) are upstream
    - "a"     Report distance with respect to A. When A is on the - strand, "upstream"
    means B has a higher (start,stop). - "b"     Report distance with respect to B.
    When B is on the - strand, "upstream" means A has a higher (start,stop).'
  type: boolean
  inputBinding:
    prefix: -D
- id: io
  doc: Ignore features in B that overlap A.  That is, we want close, yet not touching
    features only.
  type: boolean
  inputBinding:
    prefix: -io
- id: iu
  doc: Ignore features in B that are upstream of features in A. This option requires
    -D and follows its orientation rules for determining what is "upstream".
  type: boolean
  inputBinding:
    prefix: -iu
- id: id
  doc: Ignore features in B that are downstream of features in A. This option requires
    -D and follows its orientation rules for determining what is "downstream".
  type: boolean
  inputBinding:
    prefix: -id
- id: fu
  doc: Choose first from features in B that are upstream of features in A. This option
    requires -D and follows its orientation rules for determining what is "upstream".
  type: boolean
  inputBinding:
    prefix: -fu
- id: fd
  doc: Choose first from features in B that are downstream of features in A. This
    option requires -D and follows its orientation rules for determining what is "downstream".
  type: boolean
  inputBinding:
    prefix: -fd
- id: t
  doc: 'How ties for closest feature are handled.  This occurs when two features in
    B have exactly the same "closeness" with A. By default, all such features in B
    are reported. Here are all the options: - "all"    Report all ties (default).
    - "first"  Report the first tie that occurred in the B file. - "last"   Report
    the last tie that occurred in the B file.'
  type: boolean
  inputBinding:
    prefix: -t
- id: mdb
  doc: How multiple databases are resolved. - "each"    Report closest records for
    each database (default). - "all"  Report closest records among all databases.
  type: boolean
  inputBinding:
    prefix: -mdb
- id: k
  doc: Report the k closest hits. Default is 1. If tieMode = "all",  - all ties will
    still be reported.
  type: boolean
  inputBinding:
    prefix: -k
- id: n
  doc: Require that the query and the closest hit have different names. For BED, the
    4th column is compared.
  type: boolean
  inputBinding:
    prefix: -N
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
- closest
