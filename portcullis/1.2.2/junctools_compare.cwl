class: CommandLineTool
id: junctools_compare.cwl
inputs:
- id: reference
  doc: The junction file to treat as the reference
  type: string
  inputBinding:
    position: 0
- id: input
  doc: One or more junction files to compare against the reference
  type: string
  inputBinding:
    position: 1
- id: use_strand
  doc: Whether to use strand information when building keys
  type: boolean
  inputBinding:
    prefix: --use_strand
- id: labels
  doc: Path to a file containing labels for the reference indicating whether or not
    each reference junction is genuine (as generated using the markup tool). If provided
    this script produces a much richer performance analysis. Not compatible with '--
    multiclass'
  type: string
  inputBinding:
    prefix: --labels
- id: multiclass
  doc: 'Breakdown results into multiple classes: 1) Matching intron 2) Two matching
    splice sites but no matching intron (i.e. splice sites from different introns)
    3) One matching splice site 4) No matching splice sites'
  type: boolean
  inputBinding:
    prefix: --multiclass
outputs: []
cwlVersion: v1.1
baseCommand:
- junctools
- compare
