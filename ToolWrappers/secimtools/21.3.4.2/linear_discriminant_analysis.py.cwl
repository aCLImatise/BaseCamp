class: CommandLineTool
id: linear_discriminant_analysis.py.cwl
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
- id: in_id
  doc: Name of the column with unique identifiers.
  type: string?
  inputBinding:
    prefix: --ID
- id: in_group
  doc: Name of the column with groups.
  type: string?
  inputBinding:
    prefix: --group
- id: in_levels
  doc: Different groups to sort by separeted by commas.
  type: string?
  inputBinding:
    prefix: --levels
- id: in_cross_validation
  doc: "Choice of cross-validation procedure for the -nc\ndeterminantion: none, single,\
    \ double."
  type: string?
  inputBinding:
    prefix: --cross_validation
- id: in_n_components
  doc: "Number of components [Default == 2]. Used only if\n-cv=none."
  type: long?
  inputBinding:
    prefix: --nComponents
- id: in_out
  doc: Name of output file to store scores. TSV format.
  type: File?
  inputBinding:
    prefix: --out
- id: in_out_classification
  doc: "Name of output file to store classification. TSV\nformat."
  type: File?
  inputBinding:
    prefix: --outClassification
- id: in_out_classification_accuracy
  doc: "Name of output file to store classification accuracy.\nTSV format."
  type: File?
  inputBinding:
    prefix: --outClassificationAccuracy
- id: in_figure
  doc: Name of output file to store scatter plots for scores
  type: File?
  inputBinding:
    prefix: --figure
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
- id: out_out
  doc: Name of output file to store scores. TSV format.
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
- id: out_out_classification
  doc: "Name of output file to store classification. TSV\nformat."
  type: File?
  outputBinding:
    glob: $(inputs.in_out_classification)
- id: out_out_classification_accuracy
  doc: "Name of output file to store classification accuracy.\nTSV format."
  type: File?
  outputBinding:
    glob: $(inputs.in_out_classification_accuracy)
- id: out_figure
  doc: Name of output file to store scatter plots for scores
  type: File?
  outputBinding:
    glob: $(inputs.in_figure)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/secimtools:21.3.4.2--py_0
cwlVersion: v1.1
baseCommand:
- linear_discriminant_analysis.py
