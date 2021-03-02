class: CommandLineTool
id: createKUnitigMaxOverlaps.cwl
inputs:
- id: in_km_er_value
  doc: to specify the k-mer size used when generating the k-unitigs.
  type: long?
  inputBinding:
    prefix: -kmervalue
- id: in_create_coords_file
  doc: output the coords file as well as the overlaps file
  type: File?
  inputBinding:
    prefix: -create-coords-file
- id: in_largest_kuni_tig_number
  doc: "(in this case the\nk-unitigs don't have to be in numeric order in the files.)\n"
  type: long?
  inputBinding:
    prefix: -largest-kunitig-number
- id: in_prefix_dot_coords
  doc: and   prefix.overlaps.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_create_coords_file
  doc: output the coords file as well as the overlaps file
  type: File?
  outputBinding:
    glob: $(inputs.in_create_coords_file)
hints: []
cwlVersion: v1.1
baseCommand:
- createKUnitigMaxOverlaps
