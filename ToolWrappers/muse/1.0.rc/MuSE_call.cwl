class: CommandLineTool
id: MuSE_call.cwl
inputs:
- id: in_faidx_indexed_reference
  doc: faidx indexed reference sequence file
  type: File?
  inputBinding:
    prefix: -f
- id: in_single_region_chrpospos
  doc: "single region (chr:pos-pos) where somatic\nmutations are called"
  type: string?
  inputBinding:
    prefix: -r
- id: in_list_regions_chrpospos
  doc: "list of regions (chr:pos-pos or BED), one\nregion per line"
  type: File?
  inputBinding:
    prefix: -l
- id: in_output_file_name
  doc: "output file name (suffix '.MuSE.txt' is\nautomatically added)\n"
  type: File?
  inputBinding:
    prefix: -O
- id: in_tumor_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_matched_normal_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file_name
  doc: "output file name (suffix '.MuSE.txt' is\nautomatically added)\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file_name)
hints: []
cwlVersion: v1.1
baseCommand:
- MuSE
- call
