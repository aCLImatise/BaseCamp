class: CommandLineTool
id: funannotate_mask.cwl
inputs:
- id: in_input
  doc: Multi-FASTA genome file. (Required)
  type: boolean?
  inputBinding:
    prefix: --input
- id: in_out
  doc: Output softmasked FASTA file. (Required)
  type: File?
  inputBinding:
    prefix: --out
- id: in_method
  doc: 'Method to use. Default: tantan [repeatmasker, repeatmodeler]'
  type: boolean?
  inputBinding:
    prefix: --method
- id: in_repeatmasker_species
  doc: Species to use for RepeatMasker
  type: boolean?
  inputBinding:
    prefix: --repeatmasker_species
- id: in_repeat_modeler_lib
  doc: Custom repeat database (FASTA format)
  type: boolean?
  inputBinding:
    prefix: --repeatmodeler_lib
- id: in_cpus
  doc: 'Number of cpus to use. Default: 2'
  type: boolean?
  inputBinding:
    prefix: --cpus
- id: in_debug
  doc: Keep intermediate files
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_arguments
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: Output softmasked FASTA file. (Required)
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/funannotate:1.8.5--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- funannotate
- mask
