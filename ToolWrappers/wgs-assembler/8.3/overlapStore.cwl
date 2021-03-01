class: CommandLineTool
id: overlapStore.cwl
inputs:
- id: in_dump_a_store
  doc: dump a store
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_report_overlap_exists
  doc: report the a,b overlap, if it exists.
  type: boolean?
  inputBinding:
    prefix: -q
- id: in_dump_picture_overlaps
  doc: dump a picture of overlaps to fragment 'iid', using clear region 'clr'.
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_estimate_genome_length
  doc: estimate genome length
  type: boolean?
  inputBinding:
    prefix: -G
- id: in_dump_store_create
  doc: Dump the store as binary, suitable for input to create a new store.
  type: boolean?
  inputBinding:
    prefix: -B
- id: in_dump_only_overlaps_error
  doc: Dump only overlaps <= erate error.
  type: string?
  inputBinding:
    prefix: -E
- id: in_dump_only_overlaps_are
  doc: Dump only overlaps that are larger than L bases (only for -p picture mode).
  type: long?
  inputBinding:
    prefix: -L
- id: in_d_five
  doc: Dump only overlaps off the 5' end of the A frag.
  type: boolean?
  inputBinding:
    prefix: -d5
- id: in_d_three
  doc: Dump only overlaps off the 3' end of the A frag.
  type: boolean?
  inputBinding:
    prefix: -d3
- id: in_dump_only_overlaps_contained
  doc: Dump only overlaps that are contained in the A frag (B contained in A).
  type: boolean?
  inputBinding:
    prefix: -dC
- id: in_dump_only_overlaps_containing
  doc: Dump only overlaps that are containing the A frag (A contained in B).
  type: boolean?
  inputBinding:
    prefix: -dc
- id: in_start_dumping_at
  doc: Start dumping at 'beginIID'.
  type: string?
  inputBinding:
    prefix: -b
- id: in_stop_dumping_after
  doc: Stop dumping after 'endIID'.
  type: string?
  inputBinding:
    prefix: -e
- id: in_report_statistics_stderr
  doc: Report statistics (to stderr) on some dumps (-d).
  type: boolean?
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- overlapStore
