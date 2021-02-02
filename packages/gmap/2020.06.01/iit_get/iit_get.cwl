class: CommandLineTool
id: iit_get.cwl
inputs:
- id: in_field
  doc: Show given field part of the annotation
  type: string
  inputBinding:
    prefix: --field
- id: in_interpret_query_queries_label
  doc: Interpret query or queries as a label, even if it is numeric
  type: boolean
  inputBinding:
    prefix: --label
- id: in_coords
  doc: Interpret query or queries as coords
  type: boolean
  inputBinding:
    prefix: --coords
- id: in_an_not_only
  doc: Show annotation lines only (no headers)
  type: boolean
  inputBinding:
    prefix: --annotonly
- id: in_sort
  doc: Sort results by coordinates
  type: boolean
  inputBinding:
    prefix: --sort
- id: in_unsigned
  doc: Print all intervals as low..high, even those entered as reverse (high < low)
  type: boolean
  inputBinding:
    prefix: --unsigned
- id: in_flanking
  doc: Show flanking segments on left and right
  type: long
  inputBinding:
    prefix: --flanking
- id: in_low_val
  doc: Low bound on a values IIT (default -Inf)
  type: string
  inputBinding:
    prefix: --lowval
- id: in_high_val
  doc: High bound on a values IIT (default +Inf)
  type: string
  inputBinding:
    prefix: --highval
- id: in_center
  doc: Align reads so given position is centered at given column
  type: long
  inputBinding:
    prefix: --center
- id: in_center_uc
  doc: Report only reads with upper-case letter at given position
  type: boolean
  inputBinding:
    prefix: --centeruc
- id: in_run_length
  doc: Report runlength IIT file in tally format
  type: boolean
  inputBinding:
    prefix: --runlength
- id: in_tally
  doc: Report tally IIT file in tally format
  type: boolean
  inputBinding:
    prefix: --tally
- id: in_zeroes
  doc: Include zeroes in tally format
  type: boolean
  inputBinding:
    prefix: --zeroes
- id: in_stats
  doc: Statistics (count, npositions, mean) of tally format
  type: boolean
  inputBinding:
    prefix: --stats
- id: in_start
  doc: 'chr:'
  type: string
  inputBinding:
    position: 0
- id: in_start_dot_do_tend
  doc: start
  type: string
  inputBinding:
    position: 1
- id: in_options
  doc: Options
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- iit_get
