class: CommandLineTool
id: agat_sp_filter_record_by_coordinates.pl.cwl
inputs:
- id: in_input
  doc: Input GTF/GFF file
  type: File?
  inputBinding:
    prefix: --input
- id: in_coordinates
  doc: "String - tsv file containing the coordinates. Coordinates must\nbe one per\
    \ line. Each line must contain 3 fields separated by a\ntabulation. Field1 is\
    \ the sequence id Field2 is the start\ncoordinate (included) Field3 is the end\
    \ coordinate (included)"
  type: File?
  inputBinding:
    prefix: --coordinates
- id: in_exclude
  doc: "Select only the features fully containined within the\ncoordinates, exclude\
    \ the overlapping ones."
  type: string?
  inputBinding:
    prefix: --exclude
- id: in_output
  doc: "Output GFF file. If no output file is specified, the output will\nbe written\
    \ to STDOUT."
  type: File?
  inputBinding:
    prefix: --output
- id: in_agat_sp_filter_record_by_coordinates_do_tpl
  doc: 'Description:'
  type: string
  inputBinding:
    position: 0
- id: in_verbosity_dot
  doc: -h or --help
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "Output GFF file. If no output file is specified, the output will\nbe written\
    \ to STDOUT."
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/agat:0.6.0--pl526r35_0
cwlVersion: v1.1
baseCommand:
- agat_sp_filter_record_by_coordinates.pl
