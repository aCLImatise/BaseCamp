class: CommandLineTool
id: segway_layer.cwl
inputs:
- id: in_big_bed
  doc: specify bigBed output file
  type: File?
  inputBinding:
    prefix: --bigBed
- id: in_mnemonic_file
  doc: "specify tab-delimited input file with mnemonic\nreplacement identifiers for\
    \ segment labels"
  type: File?
  inputBinding:
    prefix: --mnemonic-file
- id: in_no_re_color
  doc: don't recolor labels
  type: boolean?
  inputBinding:
    prefix: --no-recolor
- id: in_value__tracklinesetattr
  doc: "VALUE, --track-line-set=ATTR VALUE\nset ATTR to VALUE in track line\n"
  type: string?
  inputBinding:
    prefix: -s
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_big_bed
  doc: specify bigBed output file
  type: File?
  outputBinding:
    glob: $(inputs.in_big_bed)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/segway:3.0.3--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- segway-layer
