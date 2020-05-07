class: CommandLineTool
id: dumpCloneMiddles.cwl
inputs:
- id: p
  doc: -- attempt to guess all the required options, if your assembly follows runCA-OBT
    naming conventions.
  type: string
  inputBinding:
    prefix: -p
- id: ctg
  doc: -- dump contigs
  type: boolean
  inputBinding:
    prefix: -ctg
- id: scf
  doc: -- dump scaffolds
  type: boolean
  inputBinding:
    prefix: -scf
- id: i
  doc: -- generate a single contig or scaffold
  type: string
  inputBinding:
    prefix: -i
- id: l
  doc: -- generate only scaffolds larger than min length
  type: long
  inputBinding:
    prefix: -l
- id: s
  doc: -- suppress surrogate fragment placement (possibly multiple placements per
    frg)
  type: boolean
  inputBinding:
    prefix: -S
outputs: []
cwlVersion: v1.1
baseCommand:
- dumpCloneMiddles
