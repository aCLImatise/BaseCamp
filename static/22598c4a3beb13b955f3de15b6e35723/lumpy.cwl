class: CommandLineTool
id: lumpy.cwl
inputs:
- id: in_genome_file_defines
  doc: Genome file (defines chromosome order)
  type: boolean
  inputBinding:
    prefix: -g
- id: in_show_evidence_call
  doc: Show evidence for each call
  type: boolean
  inputBinding:
    prefix: -e
- id: in_file_read_default
  doc: File read windows size (default 1000000)
  type: boolean
  inputBinding:
    prefix: -w
- id: in_mw
  doc: minimum weight for a call
  type: boolean
  inputBinding:
    prefix: -mw
- id: in_msw
  doc: minimum per-sample weight for a call
  type: boolean
  inputBinding:
    prefix: -msw
- id: in_tt
  doc: trim threshold
  type: boolean
  inputBinding:
    prefix: -tt
- id: in_exclude_file_bed
  doc: exclude file bed file
  type: boolean
  inputBinding:
    prefix: -x
- id: in_temp_file_prefix
  doc: temp file prefix, must be to a writeable directory
  type: boolean
  inputBinding:
    prefix: -t
- id: in_output_probability_curve
  doc: output probability curve for each variant
  type: boolean
  inputBinding:
    prefix: -P
- id: in_output_bedpe_instead
  doc: output BEDPE instead of VCF
  type: boolean
  inputBinding:
    prefix: -b
- id: in_sr
  doc: "bam_file:<file name>,\nid:<sample name>,\nback_distance:<distance>,\nmin_mapping_threshold:<mapping\
    \ quality>,\nweight:<sample weight>,\nmin_clip:<minimum clip length>,\nread_group:<string>"
  type: boolean
  inputBinding:
    prefix: -sr
- id: in_pe
  doc: "bam_file:<file name>,\nid:<sample name>,\nhisto_file:<file name>,\nmean:<value>,\n\
    stdev:<value>,\nread_length:<length>,\nmin_non_overlap:<length>,\ndiscordant_z:<z\
    \ value>,\nback_distance:<distance>,\nmin_mapping_threshold:<mapping quality>,\n\
    weight:<sample weight>,\nread_group:<string>"
  type: boolean
  inputBinding:
    prefix: -pe
- id: in_bed_pe
  doc: "bedpe_file:<bedpe file>,\nid:<sample name>,\nweight:<sample weight>\n"
  type: boolean
  inputBinding:
    prefix: -bedpe
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- lumpy
