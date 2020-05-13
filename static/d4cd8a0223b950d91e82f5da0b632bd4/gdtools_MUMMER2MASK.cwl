class: CommandLineTool
id: gdtools_MUMMER2MASK.cwl
inputs:
- id: reference
  doc: File containing reference sequences in GenBank, GFF3, or FASTA format. Option
    may be provided multiple times for multiple files (REQUIRED)
  type: string
  inputBinding:
    prefix: --reference
- id: output
  doc: Output Genome Diff file. (DEFAULT=output.gd)
  type: string
  inputBinding:
    prefix: --output
- id: padding
  doc: Additional padding to add to each end of every MASK region. (DEFAULT=0)
  type: string
  inputBinding:
    prefix: --padding
- id: merge
  doc: Merge regions if they are within this distance (before adding padding). (DEFAULT=0)
  type: string
  inputBinding:
    prefix: --merge
- id: minimum
  doc: Minimum size of a region after padding and merging to remain in the MASK list.
    (DEFAULT=0)
  type: string
  inputBinding:
    prefix: --minimum
outputs: []
cwlVersion: v1.1
baseCommand:
- gdtools
- MUMMER2MASK
