class: CommandLineTool
id: mcxmap.cwl
inputs:
- id: in_imx
  doc: use matrix from file <fname>
  type: File
  inputBinding:
    prefix: -imx
- id: in_tab
  doc: use tab file from <fname>
  type: File
  inputBinding:
    prefix: -tab
- id: in_write_output_file
  doc: write output to file <fname>
  type: File
  inputBinding:
    prefix: -o
- id: in_mul
  doc: multiply domain indices by <num>
  type: long
  inputBinding:
    prefix: -mul
- id: in_c_mul
  doc: multiply column indices by <num>
  type: long
  inputBinding:
    prefix: -cmul
- id: in_r_mul
  doc: multiply row indices by <num>
  type: long
  inputBinding:
    prefix: -rmul
- id: in_shift
  doc: shift domain indices by <num>
  type: long
  inputBinding:
    prefix: -shift
- id: in_c_shift
  doc: shift column indices by <num>
  type: long
  inputBinding:
    prefix: -cshift
- id: in_r_shift
  doc: shift row indices by <num>
  type: long
  inputBinding:
    prefix: -rshift
- id: in_map
  doc: map domain indices
  type: string
  inputBinding:
    prefix: -map
- id: in_cmap
  doc: map column indices
  type: string
  inputBinding:
    prefix: -cmap
- id: in_r_map
  doc: map row indices
  type: string
  inputBinding:
    prefix: -rmap
- id: in_map_i
  doc: map domain indices with inverse
  type: string
  inputBinding:
    prefix: -mapi
- id: in_cmap_i
  doc: map column indices with inverse
  type: string
  inputBinding:
    prefix: -cmapi
- id: in_r_map_i
  doc: map row indices with inverse
  type: string
  inputBinding:
    prefix: -rmapi
- id: in_make_map
  doc: canonify domain indices, write map file
  type: File
  inputBinding:
    prefix: -make-map
- id: in_make_map_c
  doc: canonify column indices, write map file
  type: File
  inputBinding:
    prefix: -make-mapc
- id: in_make_map_r
  doc: canonify row indices, write map file
  type: File
  inputBinding:
    prefix: -make-mapr
- id: in_help
  doc: print this help
  type: boolean
  inputBinding:
    prefix: --help
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_write_output_file
  doc: write output to file <fname>
  type: File
  outputBinding:
    glob: $(inputs.in_write_output_file)
cwlVersion: v1.1
baseCommand:
- mcxmap
