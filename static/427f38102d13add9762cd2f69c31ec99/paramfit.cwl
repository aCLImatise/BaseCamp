class: CommandLineTool
id: paramfit.cwl
inputs:
- id: in_job_control_file
  doc: Job control file location (mandatory)
  type: File?
  inputBinding:
    prefix: -i
- id: in_parameter_file_location
  doc: Parameter file location --OR--
  type: File?
  inputBinding:
    prefix: -p
- id: in_pf
  doc: list     List of multiple parameter files to use, their K values
  type: string?
  inputBinding:
    prefix: -pf
- id: in_coordinate_file_location
  doc: Coordinate file location --OR--
  type: File?
  inputBinding:
    prefix: -c
- id: in_cf
  doc: list      List of mdcrd files, number of structres, qm files location
  type: long?
  inputBinding:
    prefix: -cf
- id: in_list_quantum_only
  doc: List of quantum energies (for single fits only)
  type: string?
  inputBinding:
    prefix: -q
- id: in_random_seed
  doc: (for debugging only, no default value)
  type: string?
  inputBinding:
    prefix: --random-seed
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- paramfit
