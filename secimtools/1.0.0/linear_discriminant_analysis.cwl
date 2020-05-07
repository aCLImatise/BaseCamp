class: CommandLineTool
id: linear_discriminant_analysis.py.cwl
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
- id: cross_validation
  doc: 'Choice of cross-validation procedure for the -nc determinantion: none, single,
    double.'
  type: string
  inputBinding:
    prefix: --cross_validation
- id: n_components
  doc: Number of components [Default == 2]. Used only if -cv=none.
  type: string
  inputBinding:
    prefix: --nComponents
- id: out
  doc: Name of output file to store scores. TSV format.
  type: string
  inputBinding:
    prefix: --out
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
outputs: []
cwlVersion: v1.1
baseCommand:
- linear_discriminant_analysis.py
