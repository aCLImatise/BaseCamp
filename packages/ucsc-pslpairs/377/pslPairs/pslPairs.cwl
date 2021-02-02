class: CommandLineTool
id: pslPairs.cwl
inputs:
- id: in_max
  doc: '- maximum length of clone sequence (default=47000)'
  type: long
  inputBinding:
    prefix: -max
- id: in_min
  doc: '- minimum length of clone sequence (default=32000)'
  type: long
  inputBinding:
    prefix: -min
- id: in_slop_val
  doc: "- deviation from max/min clone lengths allowed for slop report\n- (default=5000)"
  type: long
  inputBinding:
    prefix: -slopval
- id: in_near_top
  doc: '- maximium deviation from best match allowed (default=0.001)'
  type: double
  inputBinding:
    prefix: -nearTop
- id: in_mini_d
  doc: '- minimum pct ID of at least one end (default=0.96)'
  type: double
  inputBinding:
    prefix: -minId
- id: in_min_orphan_id
  doc: '- minimum pct ID for orphan alignment (default=0.96)'
  type: double
  inputBinding:
    prefix: -minOrphanId
- id: in_t_insert
  doc: "- maximum insert bases allowed in sequence alignment\n- (default=500)"
  type: long
  inputBinding:
    prefix: -tInsert
- id: in_hard_max
  doc: '- absolute maximum clone length for long report (default=75000)'
  type: long
  inputBinding:
    prefix: -hardMax
- id: in_verbose
  doc: '- display all informational messages'
  type: boolean
  inputBinding:
    prefix: -verbose
- id: in_no_bin
  doc: '- do not include bin column in output file'
  type: File
  inputBinding:
    prefix: -noBin
- id: in_no_random
  doc: "- do not include placements on random portions\n- {length(chr name) < 7}"
  type: boolean
  inputBinding:
    prefix: -noRandom
- id: in_slop
  doc: "- create <outFilePrefix>.slop file of pairs that fall within\n- slop length"
  type: boolean
  inputBinding:
    prefix: -slop
- id: in_short
  doc: "- create <outFilePrefix>.short file of pairs shorter than\n- min size"
  type: boolean
  inputBinding:
    prefix: -short
- id: in_long
  doc: "- create <outFilePrefix>.long file of pairs longer than\n- max size, but less\
    \ than hardMax size"
  type: boolean
  inputBinding:
    prefix: -long
- id: in_mismatch
  doc: "- create <outFilePrefix>.mismatch file of pairs with\n- bad orientation of\
    \ ends"
  type: boolean
  inputBinding:
    prefix: -mismatch
- id: in_orphan
  doc: '- create <outFilePrefix>.orphan file of unmatched end sequences'
  type: boolean
  inputBinding:
    prefix: -orphan
- id: in_psl_file
  doc: '- filtered psl alignments of ends from kluster run'
  type: string
  inputBinding:
    position: 0
- id: in_pair_file
  doc: "- three column tab separated: forward reverse cloneId\n- forward and reverse\
    \ columns can be comma separated end ids"
  type: string
  inputBinding:
    position: 1
- id: in_psl_tablename
  doc: '- table name the psl alignments have been loaded into'
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_no_bin
  doc: '- do not include bin column in output file'
  type: File
  outputBinding:
    glob: $(inputs.in_no_bin)
cwlVersion: v1.1
baseCommand:
- pslPairs
