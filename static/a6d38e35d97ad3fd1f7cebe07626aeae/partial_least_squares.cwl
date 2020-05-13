class: CommandLineTool
id: partial_least_squares.py.cwl
inputs:
- id: input
  doc: Input dataset in wide format.
  type: string
  inputBinding:
    prefix: --input
- id: design
  doc: Design file.
  type: string
  inputBinding:
    prefix: --design
- id: id
  doc: Name of the column with unique identifiers.
  type: string
  inputBinding:
    prefix: --ID
- id: group
  doc: Name of the column with groups.
  type: string
  inputBinding:
    prefix: --group
- id: levels
  doc: Different groups to sort by separeted by commas.
  type: string
  inputBinding:
    prefix: --levels
- id: to_compare
  doc: Name of the elements to compare in group col.
  type: string
  inputBinding:
    prefix: --toCompare
- id: cross_validation
  doc: 'Choice of cross-validation procedure for the -nc determinantion: none, single,
    double.'
  type: string
  inputBinding:
    prefix: --cross_validation
- id: n_comp
  doc: Number of components.
  type: string
  inputBinding:
    prefix: --nComp
- id: out_scores
  doc: Name of output file to store loadings. TSV format.
  type: string
  inputBinding:
    prefix: --outScores
- id: out_weights
  doc: Name of output file to store weights. TSV format.
  type: string
  inputBinding:
    prefix: --outWeights
- id: out_classification
  doc: Name of output file to store classification. TSV format.
  type: string
  inputBinding:
    prefix: --outClassification
- id: out_classification_accuracy
  doc: Name of output file to store classification accuracy. TSV format.
  type: string
  inputBinding:
    prefix: --outClassificationAccuracy
- id: figure
  doc: Name of output file to store scatter plots for scores
  type: string
  inputBinding:
    prefix: --figure
- id: palette
  doc: Name of the palette to use.
  type: string
  inputBinding:
    prefix: --palette
- id: color
  doc: Name of a valid color scheme on the selected palette
  type: string
  inputBinding:
    prefix: --color
- id: debug
  doc: Add debugging log output.
  type: boolean
  inputBinding:
    prefix: --debug
outputs: []
cwlVersion: v1.1
baseCommand:
- partial_least_squares.py
