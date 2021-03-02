class: CommandLineTool
id: snipit.cwl
inputs:
- id: in_reference
  doc: "Indicates which sequence in the alignment is the\nreference (by sequence ID).\
    \ Default: first sequence in\nalignment"
  type: string?
  inputBinding:
    prefix: --reference
- id: in_labels
  doc: "Optional csv file of labels to show in output snipit\nplot. Default: sequence\
    \ names"
  type: File?
  inputBinding:
    prefix: --labels
- id: in_l_header
  doc: "Comma separated string of column headers in label csv.\nFirst field indicates\
    \ sequence name column, second the\nlabel column. Default: 'name,label'"
  type: string?
  inputBinding:
    prefix: --l-header
- id: in_output_dir
  doc: 'Output directory. Default: current working directory'
  type: Directory?
  inputBinding:
    prefix: --output-dir
- id: in_output_file
  doc: 'Output file name stem. Default: snp_plot'
  type: File?
  inputBinding:
    prefix: --output-file
- id: in_format
  doc: 'Format options (png, jpg, pdf, svg, tiff) Default: png'
  type: string?
  inputBinding:
    prefix: --format
- id: in_height
  doc: Overwrite the default figure height
  type: string?
  inputBinding:
    prefix: --height
- id: in_width
  doc: Overwrite the default figure width
  type: string?
  inputBinding:
    prefix: --width
- id: in_size_option
  doc: 'Specify options for sizing. Options: expand, scale'
  type: long?
  inputBinding:
    prefix: --size-option
- id: in_colour_palette
  doc: "Specify colour palette. Options: primary, classic,\npurine-pyrimidine, greyscale,\
    \ wes, verity\n"
  type: string?
  inputBinding:
    prefix: --colour-palette
- id: in_alignment
  doc: Input alignment fasta file
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_labels
  doc: "Optional csv file of labels to show in output snipit\nplot. Default: sequence\
    \ names"
  type: File?
  outputBinding:
    glob: $(inputs.in_labels)
- id: out_output_dir
  doc: 'Output directory. Default: current working directory'
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_dir)
- id: out_output_file
  doc: 'Output file name stem. Default: snp_plot'
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/snipit:1.0.3--py_0
cwlVersion: v1.1
baseCommand:
- snipit
