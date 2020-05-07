class: CommandLineTool
id: rgt_TDF_autobinding.cwl
inputs:
- id: i
  doc: Input FASTA file of the whole genome
  type: boolean
  inputBinding:
    prefix: -i
- id: l
  doc: '[Triplexes] Define the minimum length of triplex (default: 20)'
  type: boolean
  inputBinding:
    prefix: -l
- id: e
  doc: '[Triplexes] Set the maximal error-rate in % tolerated (default: 20)'
  type: boolean
  inputBinding:
    prefix: -e
- id: abo
  doc: '[Triplexes] Autobinding offset. Maximum offset between autobinding regions
    (must be positive, >= 0), e.g., 1 for regions to be at least adjacent, 2 if there
    can be 1 bp space between segments, etc. (default: 5)'
  type: boolean
  inputBinding:
    prefix: -abo
outputs: []
cwlVersion: v1.1
baseCommand:
- rgt-TDF
- autobinding
