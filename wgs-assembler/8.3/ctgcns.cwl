class: CommandLineTool
id: ctgcns.cwl
inputs:
- id: c
  doc: Compute only contig ID 'b' (must be in the correct partition!)
  type: string
  inputBinding:
    prefix: -c
- id: c
  doc: Compute only contigs from ID 'b' to ID 'e'
  type: string
  inputBinding:
    prefix: -c
- id: t
  doc: Test the computation of the contig layout in 'file'
  type: File
  inputBinding:
    prefix: -T
- id: f
  doc: Recompute contigs that already have a multialignment
  type: boolean
  inputBinding:
    prefix: -f
- id: u
  doc: Reuse the unitig consensus for contigs with only a single unitig (EXPERIMENTAL!)
  type: boolean
  inputBinding:
    prefix: -U
- id: o
  doc: Don't update tigStore, dump a binary file instead.
  type: File
  inputBinding:
    prefix: -O
- id: i
  doc: Import binary file into tigStore
  type: File
  inputBinding:
    prefix: -I
- id: v
  doc: Show multialigns.
  type: boolean
  inputBinding:
    prefix: -v
- id: v
  doc: Enable debugging option 'verbosemultialign'.
  type: boolean
  inputBinding:
    prefix: -V
- id: w
  doc: Smoothing window size
  type: string
  inputBinding:
    prefix: -w
outputs: []
cwlVersion: v1.1
baseCommand:
- ctgcns
