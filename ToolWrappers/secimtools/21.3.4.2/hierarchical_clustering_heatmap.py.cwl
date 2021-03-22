class: CommandLineTool
id: hierarchical_clustering_heatmap.py.cwl
inputs:
- id: in_input
  doc: Input dataset in wide format.
  type: string?
  inputBinding:
    prefix: --input
- id: in_design
  doc: Design file.
  type: File?
  inputBinding:
    prefix: --design
- id: in_uniqid
  doc: Name of the column with unique dentifiers.
  type: string?
  inputBinding:
    prefix: --uniqID
- id: in_den_do_gram
  doc: "Indicate wether you want to use a dendogram or not in\nthe heatmap."
  type: boolean?
  inputBinding:
    prefix: --dendogram
- id: in_labels
  doc: "Indicate wichlabels if any that you want to remove\nfrom the plot."
  type: string?
  inputBinding:
    prefix: --labels
- id: in_fig
  doc: Output path for heatmap file[PDF]
  type: File?
  inputBinding:
    prefix: --fig
- id: in_palette
  doc: Name of the palette to use.
  type: string?
  inputBinding:
    prefix: --palette
- id: in_color
  doc: "Name of a valid color scheme on the selected palette\n"
  type: string?
  inputBinding:
    prefix: --color
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_fig
  doc: Output path for heatmap file[PDF]
  type: File?
  outputBinding:
    glob: $(inputs.in_fig)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/secimtools:21.3.4.2--py_0
cwlVersion: v1.1
baseCommand:
- hierarchical_clustering_heatmap.py
