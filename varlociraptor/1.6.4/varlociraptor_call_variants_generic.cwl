class: CommandLineTool
id: varlociraptor_call_variants_generic.cwl
inputs:
- id: obs
  doc: '...    BCF file with varlociraptor preprocess results for each sample defined
    in the given scenario (given as samplename=path/to/calls.bcf).'
  type: string
  inputBinding:
    prefix: --obs
- id: scenario
  doc: Scenario defined in the varlociraptor calling grammar.
  type: string
  inputBinding:
    prefix: --scenario
outputs: []
cwlVersion: v1.1
baseCommand:
- varlociraptor
- call
- variants
- generic
