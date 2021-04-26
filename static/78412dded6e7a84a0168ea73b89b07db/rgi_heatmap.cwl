class: CommandLineTool
id: rgi_heatmap.cwl
inputs:
- id: in_input
  doc: Directory containing the RGI .json files (REQUIRED)
  type: Directory?
  inputBinding:
    prefix: --input
- id: in_category
  doc: "The option to organize resistance genes based on a\ncategory."
  type: string?
  inputBinding:
    prefix: --category
- id: in_frequency
  doc: Represent samples based on resistance profile.
  type: boolean?
  inputBinding:
    prefix: --frequency
- id: in_output
  doc: "Name for the output EPS and PNG files. The number of\nfiles run will automatically\
    \ be appended to the end of\nthe file name. (default=RGI_heatmap)"
  type: long?
  inputBinding:
    prefix: --output
- id: in_cluster
  doc: "Option to use SciPy's hiearchical clustering algorithm\nto cluster rows (AMR\
    \ genes) or columns (samples)."
  type: string?
  inputBinding:
    prefix: --cluster
- id: in_display
  doc: "Specify display options for categories\n(deafult=plain)."
  type: string?
  inputBinding:
    prefix: --display
- id: in_debug
  doc: debug mode
  type: boolean?
  inputBinding:
    prefix: --debug
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/rgi:5.2.0--pyhdfd78af_0
cwlVersion: v1.1
baseCommand:
- rgi
- heatmap
