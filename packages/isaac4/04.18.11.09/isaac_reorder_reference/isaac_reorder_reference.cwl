class: CommandLineTool
id: isaac_reorder_reference.cwl
inputs:
- id: in_help_defaults
  doc: "produce tab-delimited list of command line\noptions and their default values"
  type: boolean?
  inputBinding:
    prefix: --help-defaults
- id: in_help_md
  doc: "produce help message pre-formatted as a\nmarkdown file section and exit"
  type: boolean?
  inputBinding:
    prefix: --help-md
- id: in_order
  doc: "Comma-separated list of contig names in the\norder in which they will appear\
    \ in the new .fa\nfile."
  type: File?
  inputBinding:
    prefix: --order
- id: in_arg_path_reordered
  doc: '[ --output-directory ] arg Path for the reordered fasta and annotation'
  type: File?
  inputBinding:
    prefix: -d
- id: in_arg_full_path
  doc: '[ --reference-genome ] arg Full path to the reference genome XML'
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_print_program_version
  doc: '[ --version ]              print program version information'
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_files_dot
  doc: -x [ --output-xml ] arg       Path for the new xml file.
  type: string
  inputBinding:
    position: 0
- id: in_descriptor_dot
  doc: --response-file arg           file with more command line arguments
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_arg_path_reordered
  doc: '[ --output-directory ] arg Path for the reordered fasta and annotation'
  type: File?
  outputBinding:
    glob: $(inputs.in_arg_path_reordered)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/isaac4:04.18.11.09--h07bff40_0
cwlVersion: v1.1
baseCommand:
- isaac-reorder-reference
