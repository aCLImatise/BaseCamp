class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/solvate_ions.py.cwl
inputs:
- id: input_pdb_file
  doc: Input PDB file
  type: string
  inputBinding:
    prefix: -f
- id: topologie_gromacs_format
  doc: Topologie in gromacs format .top
  type: string
  inputBinding:
    prefix: -p
- id: output_directory
  doc: Output Directory
  type: string
  inputBinding:
    prefix: -o
- id: output_file_name
  doc: Output file name
  type: string
  inputBinding:
    prefix: -n
- id: distance_solute_box
  doc: Distance between the solute and the box
  type: string
  inputBinding:
    prefix: -d
- id: concentration_mm_default
  doc: Ion concentration (mM), default = 0.15 (150mM)
  type: string
  inputBinding:
    prefix: -C
outputs: []
cwlVersion: v1.1
baseCommand:
- solvate_ions.py
