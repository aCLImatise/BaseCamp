class: CommandLineTool
id: mahalanobis_distance.py.cwl
inputs:
- id: in_input
  doc: Dataset in Wide format
  type: string
  inputBinding:
    prefix: --input
- id: in_design
  doc: Design file
  type: File
  inputBinding:
    prefix: --design
- id: in_id
  doc: Name of the column with uniqueID.
  type: string
  inputBinding:
    prefix: --ID
- id: in_group
  doc: Treatment group
  type: string
  inputBinding:
    prefix: --group
- id: in_order
  doc: Run Order
  type: string
  inputBinding:
    prefix: --order
- id: in_levels
  doc: Additional notes.
  type: string
  inputBinding:
    prefix: --levels
- id: in_figure
  doc: PDF Output of standardizedEuclidean distance plot
  type: string
  inputBinding:
    prefix: --figure
- id: in_distance_to_mean
  doc: "TSV Output of Mahalanobis distances from samples to\nthe mean."
  type: string
  inputBinding:
    prefix: --distanceToMean
- id: in_distance_pairwise
  doc: TSV Output of sample-pairwisemahalanobis distances.
  type: string
  inputBinding:
    prefix: --distancePairwise
- id: in_per
  doc: "The thresholdfor standard distributions. The default\nis 0.95."
  type: double
  inputBinding:
    prefix: --per
- id: in_penalty
  doc: Value of lambda for the penalty.
  type: string
  inputBinding:
    prefix: --penalty
- id: in_log
  doc: Log file
  type: File
  inputBinding:
    prefix: --log
- id: in_palette
  doc: Name of the palette to use.
  type: string
  inputBinding:
    prefix: --palette
- id: in_color
  doc: "Name of a valid color scheme on the selected palette\n"
  type: string
  inputBinding:
    prefix: --color
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- mahalanobis_distance.py
