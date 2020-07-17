class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/overlapImport.cwl
inputs:
- id: path_valid_sequence
  doc: path to valid sequence store
  type: string
  inputBinding:
    prefix: -S
- id: output_file_name
  doc: output file name
  type: File
  inputBinding:
    prefix: -o
- id: output_overlap_store
  doc: output overlap store
  type: string
  inputBinding:
    prefix: -O
- id: coords
  doc: as coordinates on each read (default)
  type: boolean
  inputBinding:
    prefix: -coords
- id: hangs
  doc: as dovetail hangs
  type: boolean
  inputBinding:
    prefix: -hangs
- id: unaligned
  doc: as unaligned regions on each read
  type: boolean
  inputBinding:
    prefix: -unaligned
- id: paf
  doc: as miniasm Pairwise mApping Format
  type: boolean
  inputBinding:
    prefix: -paf
- id: raw
  doc: uncorrected raw reads
  type: boolean
  inputBinding:
    prefix: -raw
- id: obt
  doc: corrected reads
  type: boolean
  inputBinding:
    prefix: -obt
- id: utg
  doc: trimmed reads
  type: boolean
  inputBinding:
    prefix: -utg
- id: random
  doc: create N random overlaps, for store testing
  type: string
  inputBinding:
    prefix: -random
- id: a_read_ids_will_y
  doc: A read IDs will be between x and y
  type: string
  inputBinding:
    prefix: -a
- id: b_read_ids_will_y
  doc: B read IDs will be between x and y
  type: string
  inputBinding:
    prefix: -b
- id: ascii_ovl_file_input_dot
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- overlapImport
