class: CommandLineTool
id: analyze_splits_sam.py.cwl
inputs:
- id: input
  doc: The input file in PSL format.
  type: string
  inputBinding:
    prefix: --input
- id: output
  doc: The output PSL file containing the contigs with the best alignment which must
    be unique.
  type: string
  inputBinding:
    prefix: --output
- id: clipped_reads_ids
  doc: The output text file containing ids of reads which have unmapped clippings.
  type: string
  inputBinding:
    prefix: --clipped-reads-ids
- id: clipped_reads_refs
  doc: The output text file containing reference ids on which the clipped reads are
    mapped.
  type: string
  inputBinding:
    prefix: --clipped-reads-refs
- id: clip_min
  doc: Minimum size of clipping which will be written in the output given by '--reads-ids'.
    Default is '10'.
  type: long
  inputBinding:
    prefix: --clip-min
- id: remove_extra
  doc: It removes from the string of reads ids everything what is after '__' and also
    '__'. Default is 'False'.
  type: boolean
  inputBinding:
    prefix: --remove-extra
outputs: []
cwlVersion: v1.1
baseCommand:
- analyze_splits_sam.py
