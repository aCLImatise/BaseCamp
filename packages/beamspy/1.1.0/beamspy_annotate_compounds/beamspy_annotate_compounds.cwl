class: CommandLineTool
id: beamspy_annotate_compounds.cwl
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
- id: in_db
  doc: Sqlite database to write results.
  type: string?
  inputBinding:
    prefix: --db
- id: in_db_compounds
  doc: Metabolite database (reference).
  type: string?
  inputBinding:
    prefix: --db-compounds
- id: in_db_name
  doc: "Name compound / metabolite database (within --db-\ncompounds)."
  type: string?
  inputBinding:
    prefix: --db-name
- id: in_adducts_library
  doc: List of adducts to search for.
  type: string?
  inputBinding:
    prefix: --adducts-library
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
- id: in_skip_patterns
  doc: "Skip applying/using peak patterns (e.g. adduct and\nisotope patterns) to filter\
    \ annotations."
  type: boolean?
  inputBinding:
    prefix: --skip-patterns
- id: in_rt
  doc: Retention time tolerance in seconds.
  type: string?
  inputBinding:
    prefix: --rt
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
- annotate-compounds
