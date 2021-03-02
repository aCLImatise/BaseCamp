class: CommandLineTool
id: msstitch_perco2psm.cwl
inputs:
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
- id: in_multiple_input_files
  doc: Multiple input files of {} format
  type: string[]
  inputBinding:
    prefix: -i
- id: in_mz_ids
  doc: "MzIdentML output files belonging to PSM table TSV\nfiles, use same order as\
    \ for TSVs"
  type: string[]
  inputBinding:
    prefix: --mzids
- id: in_per_co
  doc: Percolator XML output file
  type: File?
  inputBinding:
    prefix: --perco
- id: in_filt_pep
  doc: Peptide q-value cutoff level as a floating point
  type: string?
  inputBinding:
    prefix: --filtpep
- id: in_number
  doc: --filtpsm FILTPSM     PSM q-value cutoff level as a floating point number
  type: long
  inputBinding:
    position: 0
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
- id: out_per_co
  doc: Percolator XML output file
  type: File?
  outputBinding:
    glob: $(inputs.in_per_co)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/msstitch:3.5--py_0
cwlVersion: v1.1
baseCommand:
- msstitch
- perco2psm
