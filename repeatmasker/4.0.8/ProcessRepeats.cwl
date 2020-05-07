class: CommandLineTool
id: ProcessRepeats.cwl
inputs:
- id: ace
  doc: Creates an additional output file in ACeDB format.
  type: boolean
  inputBinding:
    prefix: -ace
- id: gff
  doc: Creates an additional Gene Feature Finding format.
  type: boolean
  inputBinding:
    prefix: -gff
- id: poly
  doc: Creates an output file listing only potentially polymorphic simple repeats.
  type: boolean
  inputBinding:
    prefix: -poly
- id: no_id
  doc: Leaves out final column with unique number for each element (was default).
  type: boolean
  inputBinding:
    prefix: -no_id
- id: excl_n
  doc: Calculates repeat densities excluding long stretches of Ns in the query.
  type: boolean
  inputBinding:
    prefix: -excln
- id: orf2
  doc: Results in sometimes negative coordinates for L1 elements; all L1 subfamilies
    are aligned over the ORF2 region, sometimes improving interpretation of data.
  type: boolean
  inputBinding:
    prefix: -orf2
- id: a
  doc: Shows the alignments in a .align output file.
  type: boolean
  inputBinding:
    prefix: -a
- id: mask_source
  doc: Instructs ProcessRepeats to mask the sequence file using the annotation.
  type: string
  inputBinding:
    prefix: -maskSource
- id: x
  doc: Mask repeats with a lower case 'x'.
  type: boolean
  inputBinding:
    prefix: -x
- id: xsmall
  doc: Mask repeats by making the sequence lowercase.
  type: boolean
  inputBinding:
    prefix: -xsmall
outputs: []
cwlVersion: v1.1
baseCommand:
- ProcessRepeats
