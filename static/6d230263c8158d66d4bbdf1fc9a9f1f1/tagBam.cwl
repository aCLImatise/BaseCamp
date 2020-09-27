class: CommandLineTool
id: tagBam.cwl
inputs:
- id: in_require_overlaps_same
  doc: "Require overlaps on the same strand.  That is, only tag alignments that have\
    \ the same\nstrand as a feature in the annotation file(s)."
  type: boolean
  inputBinding:
    prefix: -s
- id: in_require_overlaps_opposite
  doc: "Require overlaps on the opposite strand.  That is, only tag alignments that\
    \ have the opposite\nstrand as a feature in the annotation file(s)."
  type: boolean
  inputBinding:
    prefix: -S
- id: in_minimum_overlap_required
  doc: "Minimum overlap required as a fraction of the alignment.\n- Default is 1E-9\
    \ (i.e., 1bp).\n- FLOAT (e.g. 0.50)"
  type: boolean
  inputBinding:
    prefix: -f
- id: in_dictate_what_tag
  doc: "Dictate what the tag should be. Default is YB.\n- STRING (two characters,\
    \ e.g., YK)"
  type: boolean
  inputBinding:
    prefix: -tag
- id: in_names
  doc: "Use the name field from the annotation files to populate tags.\nBy default,\
    \ the -labels values are used."
  type: boolean
  inputBinding:
    prefix: -names
- id: in_scores
  doc: "the score field from the annotation files to populate tags.\nBy default, the\
    \ -labels values are used."
  type: string
  inputBinding:
    prefix: -scores
- id: in_intervals
  doc: "Use the full interval (including name, score, and strand) to populate tags.\n\
    Requires the -labels option to identify from which file the interval came.\n"
  type: boolean
  inputBinding:
    prefix: -intervals
- id: in_labels
  doc: ''
  type: string[]
  inputBinding:
    prefix: -labels
- id: in_files
  doc: ''
  type: File[]
  inputBinding:
    prefix: -files
- id: in_i
  doc: ''
  type: string
  inputBinding:
    prefix: -i
- id: in_bed_tools
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_var_11
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- tagBam
