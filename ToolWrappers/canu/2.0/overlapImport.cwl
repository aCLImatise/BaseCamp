class: CommandLineTool
id: overlapImport.cwl
inputs:
- id: in_path_valid_sequence
  doc: path to valid sequence store
  type: File?
  inputBinding:
    prefix: -S
- id: in_output_file_name
  doc: output file name
  type: File?
  inputBinding:
    prefix: -o
- id: in_output_overlap_store
  doc: output overlap store
  type: string?
  inputBinding:
    prefix: -O
- id: in_coords
  doc: as coordinates on each read (default)
  type: boolean?
  inputBinding:
    prefix: -coords
- id: in_hangs
  doc: as dovetail hangs
  type: boolean?
  inputBinding:
    prefix: -hangs
- id: in_unaligned
  doc: as unaligned regions on each read
  type: boolean?
  inputBinding:
    prefix: -unaligned
- id: in_paf
  doc: as miniasm Pairwise mApping Format
  type: boolean?
  inputBinding:
    prefix: -paf
- id: in_raw
  doc: uncorrected raw reads
  type: boolean?
  inputBinding:
    prefix: -raw
- id: in_obt
  doc: corrected reads
  type: boolean?
  inputBinding:
    prefix: -obt
- id: in_utg
  doc: trimmed reads
  type: boolean?
  inputBinding:
    prefix: -utg
- id: in_random
  doc: create N random overlaps, for store testing
  type: string?
  inputBinding:
    prefix: -random
- id: in_read_ids_be
  doc: A read IDs will be between x and y
  type: string?
  inputBinding:
    prefix: -a
- id: in_b_read_ids
  doc: B read IDs will be between x and y
  type: string?
  inputBinding:
    prefix: -b
- id: in_ascii_ovl_file_input_dot
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file_name
  doc: output file name
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file_name)
hints: []
cwlVersion: v1.1
baseCommand:
- overlapImport
