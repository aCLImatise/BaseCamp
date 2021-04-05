class: CommandLineTool
id: ms2pip.cwl
inputs:
- id: in_config_file
  doc: "Configuration file: text-based (extensions `.txt`,\n`.config`, or `.ms2pip`)\
    \ or TOML (extension `.toml`)."
  type: File?
  inputBinding:
    prefix: --config-file
- id: in_spectrum_file
  doc: .mgf MS2 spectrum file (optional)
  type: File?
  inputBinding:
    prefix: --spectrum-file
- id: in_vector_file
  doc: write feature vectors to FILE.{pkl,h5} (optional)
  type: File?
  inputBinding:
    prefix: --vector-file
- id: in_retention_time
  doc: "add retention time predictions (requires DeepLC python\npackage)"
  type: boolean?
  inputBinding:
    prefix: --retention-time
- id: in_correlations
  doc: calculate correlations (if MGF is given)
  type: boolean?
  inputBinding:
    prefix: --correlations
- id: in_match_spectra
  doc: "match peptides to spectra based on predicted spectra\n(if MGF is given)"
  type: boolean?
  inputBinding:
    prefix: --match-spectra
- id: in_tableau
  doc: create Tableau Reader file
  type: boolean?
  inputBinding:
    prefix: --tableau
- id: in_num_cpu
  doc: 'number of CPUs to use (default: all available)'
  type: long?
  inputBinding:
    prefix: --num-cpu
- id: in_sql_db_uri
  doc: "use sql database of observed spectra instead of MGF\nfiles\n"
  type: string?
  inputBinding:
    prefix: --sqldb-uri
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/ms2pip:3.6.3--py38h4a8c8d9_0
cwlVersion: v1.1
baseCommand:
- ms2pip
