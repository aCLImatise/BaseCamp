class: CommandLineTool
id: metagraph_DNA_relax_brwt.cwl
inputs:
- id: in_outfile_base
  doc: '[STR] basename of output file []'
  type: File?
  inputBinding:
    prefix: --outfile-base
- id: in_relax_arity
  doc: '[INT]  relax brwt tree to optimize arity limited to this number [10]'
  type: boolean?
  inputBinding:
    prefix: --relax-arity
- id: in_parallel
  doc: '[INT]     use multiple threads for computation [1]'
  type: boolean?
  inputBinding:
    prefix: --parallel
- id: in_verbose
  doc: switch on verbose output [off]
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_annotator
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outfile_base
  doc: '[STR] basename of output file []'
  type: File?
  outputBinding:
    glob: $(inputs.in_outfile_base)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/metagraph:0.1.0--hcb16fcb_0
cwlVersion: v1.1
baseCommand:
- metagraph_DNA
- relax_brwt
