class: CommandLineTool
id: funannotate_mask.cwl
inputs:
- id: arguments
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: input
  doc: Multi-FASTA genome file. (Required)
  type: boolean
  inputBinding:
    prefix: --input
- id: out
  doc: Output softmasked FASTA file. (Required)
  type: boolean
  inputBinding:
    prefix: --out
- id: method
  doc: 'Method to use. Default: tantan [repeatmasker, repeatmodeler]'
  type: boolean
  inputBinding:
    prefix: --method
- id: repeatmasker_species
  doc: Species to use for RepeatMasker
  type: boolean
  inputBinding:
    prefix: --repeatmasker_species
- id: repeat_modeler_lib
  doc: Custom repeat database (FASTA format)
  type: boolean
  inputBinding:
    prefix: --repeatmodeler_lib
- id: cpus
  doc: 'Number of cpus to use. Default: 2'
  type: boolean
  inputBinding:
    prefix: --cpus
- id: debug
  doc: Keep intermediate files
  type: boolean
  inputBinding:
    prefix: --debug
outputs: []
cwlVersion: v1.1
baseCommand:
- funannotate
- mask
