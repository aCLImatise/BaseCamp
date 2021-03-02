class: CommandLineTool
id: filter_away_subset.py.cwl
inputs:
- id: in_fuzzy_junction
  doc: "Fuzzy junction max dist (default: 5bp)\n"
  type: long?
  inputBinding:
    prefix: --fuzzy_junction
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/cdna_cupcake:19.0.0--py37h97743b1_0
cwlVersion: v1.1
baseCommand:
- filter_away_subset.py
