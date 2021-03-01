class: CommandLineTool
id: unitem_greedy.cwl
inputs:
- id: in_bin_dirs
  doc: "[BIN_DIRS [BIN_DIRS ...]]\ndirectories with bins from different binning methods"
  type: boolean?
  inputBinding:
    prefix: --bin_dirs
- id: in_bin_file
  doc: "tab-separated file indicating directories with bins\nfrom binning methods\
    \ (two columns: method name and\ndirectory)"
  type: File?
  inputBinding:
    prefix: --bin_file
- id: in_weight
  doc: "weight given to contamination for assessing genome\nqualitys (default: 2)"
  type: long?
  inputBinding:
    prefix: --weight
- id: in_sel_min_quality
  doc: "minimum quality of bin to consider during bin\nselection process (default:\
    \ 50)"
  type: long?
  inputBinding:
    prefix: --sel_min_quality
- id: in_sel_min_comp
  doc: "minimum completeness of bin to consider during bin\nselection process (default:\
    \ 50)"
  type: long?
  inputBinding:
    prefix: --sel_min_comp
- id: in_sel_max_cont
  doc: "maximum contamination of bin to consider during bin\nselection process (default:\
    \ 10)"
  type: long?
  inputBinding:
    prefix: --sel_max_cont
- id: in_report_min_quality
  doc: 'minimum quality of bin to report (default: 10)'
  type: long?
  inputBinding:
    prefix: --report_min_quality
- id: in_simple_headers
  doc: do not added additional information to FASTA headers
  type: boolean?
  inputBinding:
    prefix: --simple_headers
- id: in_bin_prefix
  doc: 'prefix for output bins (default: bin)'
  type: string?
  inputBinding:
    prefix: --bin_prefix
- id: in_silent
  doc: suppress output of logger
  type: boolean?
  inputBinding:
    prefix: --silent
- id: in_profile_dir
  doc: "directory with bin profiles (output of 'profile'\ncommand)"
  type: string
  inputBinding:
    position: 0
- id: in_output_dir
  doc: output directory
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/unitem:0.0.18--py_0
cwlVersion: v1.1
baseCommand:
- unitem
- greedy
