class: CommandLineTool
id: bedtools_window.cwl
inputs:
- id: in_a_bam
  doc: The A input file is in BAM format.  Output will be BAM as well. Replaces -a.
  type: boolean
  inputBinding:
    prefix: -abam
- id: in_ub_am
  doc: Write uncompressed BAM output. Default writes compressed BAM.
  type: boolean
  inputBinding:
    prefix: -ubam
- id: in_bed
  doc: "When using BAM input (-abam), write output as BED. The default\nis to write\
    \ output in BAM when using -abam."
  type: boolean
  inputBinding:
    prefix: -bed
- id: in_base_pairs_added_upstream_downstream
  doc: "Base pairs added upstream and downstream of each entry\nin A when searching\
    \ for overlaps in B.\n- Creates symmetrical \"windows\" around A.\n- Default is\
    \ 1000 bp.\n- (INTEGER)"
  type: boolean
  inputBinding:
    prefix: -w
- id: in_base_pairs_added_upstream_left
  doc: "Base pairs added upstream (left of) of each entry\nin A when searching for\
    \ overlaps in B.\n- Allows one to define asymmetrical \"windows\".\n- Default\
    \ is 1000 bp.\n- (INTEGER)"
  type: boolean
  inputBinding:
    prefix: -l
- id: in_base_pairs_added_right
  doc: "Base pairs added downstream (right of) of each entry\nin A when searching\
    \ for overlaps in B.\n- Allows one to define asymmetrical \"windows\".\n- Default\
    \ is 1000 bp.\n- (INTEGER)"
  type: boolean
  inputBinding:
    prefix: -r
- id: in_sw
  doc: "Define -l and -r based on strand.  For example if used, -l 500\nfor a negative-stranded\
    \ feature will add 500 bp downstream.\n- Default = disabled."
  type: boolean
  inputBinding:
    prefix: -sw
- id: in_only_report_same
  doc: "Only report hits in B that overlap A on the _same_ strand.\n- By default,\
    \ overlaps are reported without respect to strand."
  type: boolean
  inputBinding:
    prefix: -sm
- id: in_only_report_opposite
  doc: "Only report hits in B that overlap A on the _opposite_ strand.\n- By default,\
    \ overlaps are reported without respect to strand."
  type: boolean
  inputBinding:
    prefix: -Sm
- id: in_write_original_entry
  doc: "Write the original A entry _once_ if _any_ overlaps found in B.\n- In other\
    \ words, just report the fact >=1 hit was found."
  type: boolean
  inputBinding:
    prefix: -u
- id: in_entry_report_number
  doc: "For each entry in A, report the number of overlaps with B.\n- Reports 0 for\
    \ A entries that have no overlap with B.\n- Overlaps restricted by -w, -l, and\
    \ -r."
  type: boolean
  inputBinding:
    prefix: -c
- id: in_only_report_entries
  doc: "Only report those entries in A that have _no overlaps_ with B.\n- Similar\
    \ to \"grep -v.\""
  type: boolean
  inputBinding:
    prefix: -v
- id: in_header
  doc: the header from the A file prior to results.
  type: File
  inputBinding:
    prefix: -header
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
- window
