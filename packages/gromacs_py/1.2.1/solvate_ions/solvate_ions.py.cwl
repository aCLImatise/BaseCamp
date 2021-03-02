class: CommandLineTool
id: solvate_ions.py.cwl
inputs:
- id: in_input_pdb_file
  doc: Input PDB file
  type: File?
  inputBinding:
    prefix: -f
- id: in_topologie_gromacs_format
  doc: Topologie in gromacs format .top
  type: string?
  inputBinding:
    prefix: -p
- id: in_output_directory
  doc: Output Directory
  type: Directory?
  inputBinding:
    prefix: -o
- id: in_output_file_name
  doc: Output file name
  type: File?
  inputBinding:
    prefix: -n
- id: in_distance_solute_box
  doc: Distance between the solute and the box
  type: string?
  inputBinding:
    prefix: -d
- id: in_ion_concentration_mm
  doc: Ion concentration (mM), default = 0.15 (150mM)
  type: double?
  inputBinding:
    prefix: -C
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_directory
  doc: Output Directory
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_directory)
- id: out_output_file_name
  doc: Output file name
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file_name)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/gromacs_py:1.2.1--py_0
cwlVersion: v1.1
baseCommand:
- solvate_ions.py
