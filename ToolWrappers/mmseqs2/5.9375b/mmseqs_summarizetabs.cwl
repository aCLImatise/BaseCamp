class: CommandLineTool
id: mmseqs_summarizetabs.cwl
inputs:
- id: in_list_matches_evalue
  doc: 0.001           list matches below this E-value [0.0, inf]
  type: boolean?
  inputBinding:
    prefix: -e
- id: in_list_matches_fraction
  doc: 0.000           list matches above this fraction of aligned (covered) residues
    (see --cov-mode)
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_overlap
  doc: 0.000           maximum overlap
  type: boolean?
  inputBinding:
    prefix: --overlap
- id: in_threads
  doc: 8               number of cores used for the computation (uses all cores by
    default)
  type: boolean?
  inputBinding:
    prefix: --threads
- id: in_verbosity_level_nothing
  doc: '3               verbosity level: 0=nothing, 1: +errors, 2: +warnings, 3: +info'
  type: boolean?
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- mmseqs
- summarizetabs
