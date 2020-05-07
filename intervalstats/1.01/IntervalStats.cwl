class: CommandLineTool
id: IntervalStats.cwl
inputs:
- id: query
  doc: Input BED file
  type: File
  inputBinding:
    prefix: --query
- id: reference
  doc: Input BED file
  type: File
  inputBinding:
    prefix: --reference
- id: domain
  doc: Input BED file
  type: File
  inputBinding:
    prefix: --domain
- id: output
  doc: output file
  type: File
  inputBinding:
    prefix: --output
- id: overlap
  doc: use exact overlap values  (Otherwise overlapping intervals have a min  Distance
    of 0)  (default=on)
  type: boolean
  inputBinding:
    prefix: --overlap
- id: self
  doc: Checks if the minimal distance points to self.  Allows comparison of a dataset
    against itself (as  query and reference) but takes longer   (default=off)
  type: boolean
  inputBinding:
    prefix: --self
- id: chr
  doc: calculate p-value per chromosome. That is, only  locations on the query interval
    chromosome are  considered for the numerator and denominator   (default=on)
  type: boolean
  inputBinding:
    prefix: --chr
- id: dist_map
  doc: make a distance map instead of using a query set   (default=off)
  type: boolean
  inputBinding:
    prefix: --distmap
outputs: []
cwlVersion: v1.1
baseCommand:
- IntervalStats
