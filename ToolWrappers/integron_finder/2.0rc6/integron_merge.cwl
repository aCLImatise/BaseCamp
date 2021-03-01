class: CommandLineTool
id: integron_merge.cwl
inputs:
- id: in_verbose
  doc: 'Increase verbosity of output (can be cumulative : -vv)'
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_quiet
  doc: 'Decrease verbosity of output (can be cumulative : -qq)'
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_outdir
  doc: path of directory where the merged result must be stored
  type: string
  inputBinding:
    position: 0
- id: in_outfile
  doc: "the basename of the result files ('.integrons' and\n'.summary') without extension,\
    \ eg : data_set_1"
  type: string
  inputBinding:
    position: 1
- id: in_results
  doc: 'Path to the results dir to merge eg : path/to/'
  type: string
  inputBinding:
    position: 2
- id: in_results_integr_on_finder_acba_dot_zero_zero_seven_dot_pzero_one_dot_one_three
  doc: path/to/Results_Integron_Finder_lian.001.c02.10
  type: double
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/integron_finder:2.0rc6--py_0
cwlVersion: v1.1
baseCommand:
- integron_merge
