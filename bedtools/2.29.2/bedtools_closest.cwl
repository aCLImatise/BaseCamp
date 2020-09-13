class: CommandLineTool
id: ../../../bedtools_closest.cwl
inputs:
- id: in_addition_closest_feature
  doc: "In addition to the closest feature in B,\nreport its distance to A as an extra\
    \ column.\n- The reported distance for overlapping features will be 0."
  type: boolean
  inputBinding:
    prefix: -d
- id: in_report_closest_feature
  doc: "Like -d, report the closest feature in B, and its distance to A\nas an extra\
    \ column. Unlike -d, use negative distances to report\nupstream features.\nThe\
    \ options for defining which orientation is \"upstream\" are:\n- \"ref\"   Report\
    \ distance with respect to the reference genome.\nB features with a lower (start,\
    \ stop) are upstream\n- \"a\"     Report distance with respect to A.\nWhen A is\
    \ on the - strand, \"upstream\" means B has a\nhigher (start,stop).\n- \"b\" \
    \    Report distance with respect to B.\nWhen B is on the - strand, \"upstream\"\
    \ means A has a\nhigher (start,stop)."
  type: boolean
  inputBinding:
    prefix: -D
- id: in_io
  doc: "Ignore features in B that overlap A.  That is, we want close,\nyet not touching\
    \ features only."
  type: boolean
  inputBinding:
    prefix: -io
- id: in_iu
  doc: "Ignore features in B that are upstream of features in A.\nThis option requires\
    \ -D and follows its orientation\nrules for determining what is \"upstream\"."
  type: boolean
  inputBinding:
    prefix: -iu
- id: in_id
  doc: "Ignore features in B that are downstream of features in A.\nThis option requires\
    \ -D and follows its orientation\nrules for determining what is \"downstream\"\
    ."
  type: boolean
  inputBinding:
    prefix: -id
- id: in_fu
  doc: "Choose first from features in B that are upstream of features in A.\nThis\
    \ option requires -D and follows its orientation\nrules for determining what is\
    \ \"upstream\"."
  type: boolean
  inputBinding:
    prefix: -fu
- id: in_fd
  doc: "Choose first from features in B that are downstream of features in A.\nThis\
    \ option requires -D and follows its orientation\nrules for determining what is\
    \ \"downstream\"."
  type: boolean
  inputBinding:
    prefix: -fd
- id: in_how_ties_closest
  doc: "How ties for closest feature are handled.  This occurs when two\nfeatures\
    \ in B have exactly the same \"closeness\" with A.\nBy default, all such features\
    \ in B are reported.\nHere are all the options:\n- \"all\"    Report all ties\
    \ (default).\n- \"first\"  Report the first tie that occurred in the B file.\n\
    - \"last\"   Report the last tie that occurred in the B file."
  type: boolean
  inputBinding:
    prefix: -t
- id: in_mdb
  doc: "How multiple databases are resolved.\n- \"each\"    Report closest records\
    \ for each database (default).\n- \"all\"  Report closest records among all databases."
  type: boolean
  inputBinding:
    prefix: -mdb
- id: in_report_closest_hits
  doc: "Report the k closest hits. Default is 1. If tieMode = \"all\",\n- all ties\
    \ will still be reported."
  type: boolean
  inputBinding:
    prefix: -k
- id: in_require_query_hit
  doc: "Require that the query and the closest hit have different names.\nFor BED,\
    \ the 4th column is compared."
  type: boolean
  inputBinding:
    prefix: -N
- id: in_require_same_strandedness
  doc: "Require same strandedness.  That is, only report hits in B\nthat overlap A\
    \ on the _same_ strand.\n- By default, overlaps are reported without respect to\
    \ strand."
  type: boolean
  inputBinding:
    prefix: -s
- id: in_require_different_strandedness
  doc: "Require different strandedness.  That is, only report hits in B\nthat overlap\
    \ A on the _opposite_ strand.\n- By default, overlaps are reported without respect\
    \ to strand."
  type: boolean
  inputBinding:
    prefix: -S
- id: in_minimum_overlap_a
  doc: "Minimum overlap required as a fraction of A.\n- Default is 1E-9 (i.e., 1bp).\n\
    - FLOAT (e.g. 0.50)"
  type: boolean
  inputBinding:
    prefix: -f
- id: in_minimum_overlap_b
  doc: "Minimum overlap required as a fraction of B.\n- Default is 1E-9 (i.e., 1bp).\n\
    - FLOAT (e.g. 0.50)"
  type: boolean
  inputBinding:
    prefix: -F
- id: in_require_fraction_overlap
  doc: "Require that the fraction overlap be reciprocal for A AND B.\n- In other words,\
    \ if -f is 0.90 and -r is used, this requires\nthat B overlap 90% of A and A _also_\
    \ overlaps 90% of B."
  type: boolean
  inputBinding:
    prefix: -r
- id: in_require_minimum_fraction
  doc: "Require that the minimum fraction be satisfied for A OR B.\n- In other words,\
    \ if -e is used with -f 0.90 and -F 0.10 this requires\nthat either 90% of A is\
    \ covered OR 10% of  B is covered.\nWithout -e, both fractions would have to be\
    \ satisfied."
  type: boolean
  inputBinding:
    prefix: -e
- id: in_split
  doc: Treat "split" BAM or BED12 entries as distinct BED intervals.
  type: boolean
  inputBinding:
    prefix: -split
- id: in_provide_genome_file
  doc: "Provide a genome file to enforce consistent chromosome sort order\nacross\
    \ input files. Only applies when used with -sorted option."
  type: boolean
  inputBinding:
    prefix: -g
- id: in_no_name_check
  doc: "For sorted data, don't throw an error if the file has different naming conventions\n\
    for the same chromosome. ex. \"chr1\" vs \"chr01\"."
  type: boolean
  inputBinding:
    prefix: -nonamecheck
- id: in_names
  doc: "When using multiple databases, provide an alias for each that\nwill appear\
    \ instead of a fileId when also printing the DB record."
  type: boolean
  inputBinding:
    prefix: -names
- id: in_filenames
  doc: "When using multiple databases, show each complete filename\ninstead of a fileId\
    \ when also printing the DB record."
  type: boolean
  inputBinding:
    prefix: -filenames
- id: in_sort_out
  doc: "When using multiple databases, sort the output DB hits\nfor each record."
  type: boolean
  inputBinding:
    prefix: -sortout
- id: in_bed
  doc: If using BAM input, write output as BED.
  type: boolean
  inputBinding:
    prefix: -bed
- id: in_header
  doc: the header from the A file prior to results.
  type: File
  inputBinding:
    prefix: -header
- id: in_no_buf
  doc: "Disable buffered output. Using this option will cause each line\nof output\
    \ to be printed as it is generated, rather than saved\nin a buffer. This will\
    \ make printing large output files\nnoticeably slower, but can be useful in conjunction\
    \ with\nother software tools and scripts that need to process one\nline of bedtools\
    \ output at a time."
  type: boolean
  inputBinding:
    prefix: -nobuf
- id: in_i_obuf
  doc: "Specify amount of memory to use for input buffer.\nTakes an integer argument.\
    \ Optional suffixes K/M/G supported.\nNote: currently has no effect with compressed\
    \ files."
  type: boolean
  inputBinding:
    prefix: -iobuf
- id: in_b
  doc: ''
  type: string
  inputBinding:
    prefix: -b
- id: in_a
  doc: ''
  type: string
  inputBinding:
    prefix: -a
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- bedtools
- closest
