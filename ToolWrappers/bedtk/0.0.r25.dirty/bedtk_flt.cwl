class: CommandLineTool
id: bedtk_flt.cwl
inputs:
- id: in_second_input_vcf
  doc: the second input is VCF (force -f and clear -m)
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_print_records_contained
  doc: print records contained in the union of <loaded.bed>
  type: boolean?
  inputBinding:
    prefix: -C
- id: in_print_nonsatisfying_records
  doc: print non-satisfying records
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_window_size
  doc: window size [0]
  type: long?
  inputBinding:
    prefix: -w
- id: in_loaded_dot_bed
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_streamed_dot_bed
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/bedtk:0.0.r25.dirty--hed695b0_0
cwlVersion: v1.1
baseCommand:
- bedtk
- flt
