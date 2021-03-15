class: CommandLineTool
id: msstitch_trypsinize.cwl
inputs:
- id: in_input_file_format
  doc: Input file of {} format
  type: File?
  inputBinding:
    prefix: -i
- id: in_directory_to_output
  doc: Directory to output in
  type: Directory?
  inputBinding:
    prefix: -d
- id: in_output_file
  doc: Output file
  type: File?
  inputBinding:
    prefix: -o
- id: in_misc_leav
  doc: "Amount of missed cleavages to allow when trypsinizing,\ndefault is 0"
  type: long?
  inputBinding:
    prefix: --miscleav
- id: in_min_len
  doc: Minimum length of peptide to be included
  type: long?
  inputBinding:
    prefix: --minlen
- id: in_cut_proline
  doc: "Flag to make trypsin before a proline residue. Then\nfiltering will be done\
    \ against both cut and non-cut\npeptides.\n"
  type: boolean?
  inputBinding:
    prefix: --cutproline
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_directory_to_output
  doc: Directory to output in
  type: Directory?
  outputBinding:
    glob: $(inputs.in_directory_to_output)
- id: out_output_file
  doc: Output file
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/msstitch:3.6--py_0
cwlVersion: v1.1
baseCommand:
- msstitch
- trypsinize
