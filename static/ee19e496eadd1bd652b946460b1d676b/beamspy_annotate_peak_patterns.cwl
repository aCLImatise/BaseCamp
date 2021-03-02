class: CommandLineTool
id: beamspy_annotate_peak_patterns.cwl
inputs:
- id: in_peak_list
  doc: Tab-delimited peaklist.
  type: string?
  inputBinding:
    prefix: --peaklist
- id: in_intensity_matrix
  doc: Tab-delimited intensity matrix.
  type: string?
  inputBinding:
    prefix: --intensity-matrix
- id: in_gml_file
  doc: Correlation graph in GraphML format.
  type: File?
  inputBinding:
    prefix: --gml-file
- id: in_db
  doc: Sqlite database to write results.
  type: string?
  inputBinding:
    prefix: --db
- id: in_adducts
  doc: Annotate adducts.
  type: boolean?
  inputBinding:
    prefix: --adducts
- id: in_adducts_library
  doc: List of adducts.
  type: string?
  inputBinding:
    prefix: --adducts-library
- id: in_isotopes
  doc: Annotate isotopes.
  type: boolean?
  inputBinding:
    prefix: --isotopes
- id: in_isotopes_library
  doc: List of isotopes.
  type: string?
  inputBinding:
    prefix: --isotopes-library
- id: in_oligomers
  doc: Annotate oligomers.
  type: boolean?
  inputBinding:
    prefix: --oligomers
- id: in_neutral_losses
  doc: Annotate neutral losses.
  type: boolean?
  inputBinding:
    prefix: --neutral-losses
- id: in_neutral_losses_library
  doc: List of neutral losses.
  type: string?
  inputBinding:
    prefix: --neutral-losses-library
- id: in_ion_mode
  doc: Ion mode of the libraries.
  type: string?
  inputBinding:
    prefix: --ion-mode
- id: in_ppm
  doc: Mass tolerance in parts per million.
  type: string?
  inputBinding:
    prefix: --ppm
- id: in_max_monomer_units
  doc: "Maximum number of monomer units.\n"
  type: long?
  inputBinding:
    prefix: --max-monomer-units
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/beamspy:1.1.0--py_0
cwlVersion: v1.1
baseCommand:
- beamspy
- annotate-peak-patterns
