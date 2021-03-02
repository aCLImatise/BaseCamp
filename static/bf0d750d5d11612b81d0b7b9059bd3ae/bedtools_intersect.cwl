class: CommandLineTool
id: bedtools_intersect.cwl
inputs:
- id: in_wa
  doc: Write the original entry in A for each overlap.
  type: boolean?
  inputBinding:
    prefix: -wa
- id: in_wb
  doc: "Write the original entry in B for each overlap.\n- Useful for knowing _what_\
    \ A overlaps. Restricted by -f and -r."
  type: boolean?
  inputBinding:
    prefix: -wb
- id: in_lo_j
  doc: "Perform a \"left outer join\". That is, for each feature in A\nreport each\
    \ overlap with B.  If no overlaps are found,\nreport a NULL feature for B."
  type: boolean?
  inputBinding:
    prefix: -loj
- id: in_wo
  doc: "Write the original A and B entries plus the number of base\npairs of overlap\
    \ between the two features.\n- Overlaps restricted by -f and -r.\nOnly A features\
    \ with overlap are reported."
  type: boolean?
  inputBinding:
    prefix: -wo
- id: in_wao
  doc: "Write the original A and B entries plus the number of base\npairs of overlap\
    \ between the two features.\n- Overlapping features restricted by -f and -r.\n\
    However, A features w/o overlap are also reported\nwith a NULL B feature and overlap\
    \ = 0."
  type: boolean?
  inputBinding:
    prefix: -wao
- id: in_write_original_entry_once
  doc: "Write the original A entry _once_ if _any_ overlaps found in B.\n- In other\
    \ words, just report the fact >=1 hit was found.\n- Overlaps restricted by -f\
    \ and -r."
  type: boolean?
  inputBinding:
    prefix: -u
- id: in_entry_report_number
  doc: "For each entry in A, report the number of overlaps with B.\n- Reports 0 for\
    \ A entries that have no overlap with B.\n- Overlaps restricted by -f, -F, -r,\
    \ and -s."
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_entry_separately_report
  doc: "For each entry in A, separately report the number of\n- overlaps with each\
    \ B file on a distinct line.\n- Reports 0 for A entries that have no overlap with\
    \ B.\n- Overlaps restricted by -f, -F, -r, and -s."
  type: boolean?
  inputBinding:
    prefix: -C
- id: in_only_report_entries
  doc: "Only report those entries in A that have _no overlaps_ with B.\n- Similar\
    \ to \"grep -v\" (an homage)."
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_ub_am
  doc: Write uncompressed BAM output. Default writes compressed BAM.
  type: boolean?
  inputBinding:
    prefix: -ubam
- id: in_require_same_strandedness
  doc: "Require same strandedness.  That is, only report hits in B\nthat overlap A\
    \ on the _same_ strand.\n- By default, overlaps are reported without respect to\
    \ strand."
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_require_different_strandedness
  doc: "Require different strandedness.  That is, only report hits in B\nthat overlap\
    \ A on the _opposite_ strand.\n- By default, overlaps are reported without respect\
    \ to strand."
  type: boolean?
  inputBinding:
    prefix: -S
- id: in_minimum_overlap_a
  doc: "Minimum overlap required as a fraction of A.\n- Default is 1E-9 (i.e., 1bp).\n\
    - FLOAT (e.g. 0.50)"
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_minimum_overlap_b
  doc: "Minimum overlap required as a fraction of B.\n- Default is 1E-9 (i.e., 1bp).\n\
    - FLOAT (e.g. 0.50)"
  type: boolean?
  inputBinding:
    prefix: -F
- id: in_require_overlap_be
  doc: "Require that the fraction overlap be reciprocal for A AND B.\n- In other words,\
    \ if -f is 0.90 and -r is used, this requires\nthat B overlap 90% of A and A _also_\
    \ overlaps 90% of B."
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_require_fraction_be
  doc: "Require that the minimum fraction be satisfied for A OR B.\n- In other words,\
    \ if -e is used with -f 0.90 and -F 0.10 this requires\nthat either 90% of A is\
    \ covered OR 10% of  B is covered.\nWithout -e, both fractions would have to be\
    \ satisfied."
  type: boolean?
  inputBinding:
    prefix: -e
- id: in_split
  doc: Treat "split" BAM or BED12 entries as distinct BED intervals.
  type: boolean?
  inputBinding:
    prefix: -split
- id: in_provide_genome_file
  doc: "Provide a genome file to enforce consistent chromosome sort order\nacross\
    \ input files. Only applies when used with -sorted option."
  type: boolean?
  inputBinding:
    prefix: -g
- id: in_no_name_check
  doc: "For sorted data, don't throw an error if the file has different naming conventions\n\
    for the same chromosome. ex. \"chr1\" vs \"chr01\"."
  type: boolean?
  inputBinding:
    prefix: -nonamecheck
- id: in_sorted
  doc: the "chromsweep" algorithm for sorted (-k1,1 -k2,2n) input.
  type: long?
  inputBinding:
    prefix: -sorted
- id: in_names
  doc: "When using multiple databases, provide an alias for each that\nwill appear\
    \ instead of a fileId when also printing the DB record."
  type: boolean?
  inputBinding:
    prefix: -names
- id: in_filenames
  doc: "When using multiple databases, show each complete filename\ninstead of a fileId\
    \ when also printing the DB record."
  type: boolean?
  inputBinding:
    prefix: -filenames
- id: in_sort_out
  doc: "When using multiple databases, sort the output DB hits\nfor each record."
  type: boolean?
  inputBinding:
    prefix: -sortout
- id: in_bed
  doc: If using BAM input, write output as BED.
  type: boolean?
  inputBinding:
    prefix: -bed
- id: in_header
  doc: the header from the A file prior to results.
  type: File?
  inputBinding:
    prefix: -header
- id: in_no_buf
  doc: "Disable buffered output. Using this option will cause each line\nof output\
    \ to be printed as it is generated, rather than saved\nin a buffer. This will\
    \ make printing large output files\nnoticeably slower, but can be useful in conjunction\
    \ with\nother software tools and scripts that need to process one\nline of bedtools\
    \ output at a time."
  type: boolean?
  inputBinding:
    prefix: -nobuf
- id: in_i_obuf
  doc: "Specify amount of memory to use for input buffer.\nTakes an integer argument.\
    \ Optional suffixes K/M/G supported.\nNote: currently has no effect with compressed\
    \ files."
  type: boolean?
  inputBinding:
    prefix: -iobuf
- id: in_b
  doc: ''
  type: string?
  inputBinding:
    prefix: -b
- id: in_a
  doc: ''
  type: string?
  inputBinding:
    prefix: -a
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- bedtools
- intersect
