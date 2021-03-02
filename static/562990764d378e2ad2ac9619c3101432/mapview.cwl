class: CommandLineTool
id: mapview.cwl
inputs:
- id: in_maxdist_set_distance
  doc: "|maxdist      Set the maximum base-pair distance between linked matches\n\
    (default 50000)"
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_format_set_format
  doc: "|format       Set the output format to 'pdf', 'ps' or 'fig'\n(default 'fig')"
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_mag_set_magnification
  doc: "|mag          Set the magnification at which the figure is rendered,\nthis\
    \ is an option for fig2dev which is used to generate\nthe PDF and PS files (default\
    \ 1.0)"
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_num_set_number
  doc: "|num          Set the number of output files used to partition the\noutput,\
    \ this is to avoid generating files that are too\nlarge to display (default 10)"
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_prefix_set_file
  doc: "|prefix       Set the output file prefix\n(default \"PROMER_graph or NUCMER_graph\"\
    )"
  type: File?
  inputBinding:
    prefix: -p
- id: in_verbose
  doc: Verbose logging of the processed files
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_x_one
  doc: Set the lower coordinate bound of the display
  type: long?
  inputBinding:
    prefix: -x1
- id: in_x_two
  doc: Set the upper coordinate bound of the display
  type: long?
  inputBinding:
    prefix: -x2
- id: in_ref_file_provided
  doc: "|ref          If the input file is provided by 'mgaps', set the\nreference\
    \ sequence ID (as it appears in the first column\nof the UTR/CDS coords file)"
  type: boolean?
  inputBinding:
    prefix: -g
- id: in_display_name_query
  doc: Display the name of query sequences
  type: boolean?
  inputBinding:
    prefix: -I
- id: in_ir
  doc: Display the name of reference genes
  type: boolean?
  inputBinding:
    prefix: -Ir
- id: in_printing_dot
  doc: 'MANDATORY:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_prefix_set_file
  doc: "|prefix       Set the output file prefix\n(default \"PROMER_graph or NUCMER_graph\"\
    )"
  type: File?
  outputBinding:
    glob: $(inputs.in_prefix_set_file)
hints: []
cwlVersion: v1.1
baseCommand:
- mapview
