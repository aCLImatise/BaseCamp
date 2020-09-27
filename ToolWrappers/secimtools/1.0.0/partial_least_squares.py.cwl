class: CommandLineTool
id: partial_least_squares.py.cwl
inputs:
- id: in_input
  doc: Input dataset in wide format.
  type: string
  inputBinding:
    prefix: --input
- id: in_design
  doc: Design file.
  type: File
  inputBinding:
    prefix: --design
- id: in_id
  doc: Name of the column with unique identifiers.
  type: string
  inputBinding:
    prefix: --ID
- id: in_group
  doc: Name of the column with groups.
  type: string
  inputBinding:
    prefix: --group
- id: in_levels
  doc: Different groups to sort by separeted by commas.
  type: string
  inputBinding:
    prefix: --levels
- id: in_to_compare
  doc: Name of the elements to compare in group col.
  type: string
  inputBinding:
    prefix: --toCompare
- id: in_cross_validation
  doc: "Choice of cross-validation procedure for the -nc\ndeterminantion: none, single,\
    \ double."
  type: string
  inputBinding:
    prefix: --cross_validation
- id: in_n_comp
  doc: Number of components.
  type: long
  inputBinding:
    prefix: --nComp
- id: in_out_scores
  doc: Name of output file to store loadings. TSV format.
  type: File
  inputBinding:
    prefix: --outScores
- id: in_out_weights
  doc: Name of output file to store weights. TSV format.
  type: File
  inputBinding:
    prefix: --outWeights
- id: in_out_classification
  doc: "Name of output file to store classification. TSV\nformat."
  type: File
  inputBinding:
    prefix: --outClassification
- id: in_out_classification_accuracy
  doc: "Name of output file to store classification accuracy.\nTSV format."
  type: File
  inputBinding:
    prefix: --outClassificationAccuracy
- id: in_figure
  doc: Name of output file to store scatter plots for scores
  type: File
  inputBinding:
    prefix: --figure
- id: in_palette
  doc: Name of the palette to use.
  type: string
  inputBinding:
    prefix: --palette
- id: in_color
  doc: Name of a valid color scheme on the selected palette
  type: string
  inputBinding:
    prefix: --color
- id: in_debug
  doc: Add debugging log output.
  type: boolean
  inputBinding:
    prefix: --debug
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_scores
  doc: Name of output file to store loadings. TSV format.
  type: File
  outputBinding:
    glob: $(inputs.in_out_scores)
- id: out_out_weights
  doc: Name of output file to store weights. TSV format.
  type: File
  outputBinding:
    glob: $(inputs.in_out_weights)
- id: out_out_classification
  doc: "Name of output file to store classification. TSV\nformat."
  type: File
  outputBinding:
    glob: $(inputs.in_out_classification)
- id: out_out_classification_accuracy
  doc: "Name of output file to store classification accuracy.\nTSV format."
  type: File
  outputBinding:
    glob: $(inputs.in_out_classification_accuracy)
- id: out_figure
  doc: Name of output file to store scatter plots for scores
  type: File
  outputBinding:
    glob: $(inputs.in_figure)
cwlVersion: v1.1
baseCommand:
- partial_least_squares.py
