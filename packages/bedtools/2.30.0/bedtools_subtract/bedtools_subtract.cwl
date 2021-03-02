class: CommandLineTool
id: bedtools_subtract.cwl
inputs:
- id: in_remove_entire_feature
  doc: "Remove entire feature if any overlap.  That is, by default,\nonly subtract\
    \ the portion of A that overlaps B. Here, if\nany overlap is found (or -f amount),\
    \ the entire feature is removed."
  type: boolean?
  inputBinding:
    prefix: -A
- id: in_same_a_when
  doc: "Same as -A except when used with -f, the amount is the sum\nof all features\
    \ (not any single feature)."
  type: boolean?
  inputBinding:
    prefix: -N
- id: in_wb
  doc: "Write the original entry in B for each overlap.\n- Useful for knowing _what_\
    \ A overlaps. Restricted by -f and -r."
  type: boolean?
  inputBinding:
    prefix: -wb
- id: in_wo
  doc: "Write the original A and B entries plus the number of base\npairs of overlap\
    \ between the two features.\n- Overlaps restricted by -f and -r.\nOnly A features\
    \ with overlap are reported."
  type: boolean?
  inputBinding:
    prefix: -wo
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
    \ files.\n"
  type: boolean?
  inputBinding:
    prefix: -iobuf
- id: in_b
  doc: ''
  type: string?
  inputBinding:
    prefix: -b
- id: in_var_19
  doc: ''
  type: string?
  inputBinding:
    prefix: -a
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/bedtools:2.30.0--hc088bd4_0
cwlVersion: v1.1
baseCommand:
- bedtools
- subtract
