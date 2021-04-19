class: CommandLineTool
id: metagraph_concatenate.cwl
inputs:
- id: in_graph
  doc: '[STR]        graph representation: succinct / bitmap [succinct]'
  type: boolean?
  inputBinding:
    prefix: --graph
- id: in_in_file_base
  doc: "[STR]  load graph chunks from files '<infile-base>.<suffix>.<type>.chunk'\
    \ []"
  type: boolean?
  inputBinding:
    prefix: --infile-base
- id: in_len_suffix
  doc: '[INT]   iterate all possible suffixes of the length given [0]'
  type: boolean?
  inputBinding:
    prefix: --len-suffix
- id: in_mode
  doc: 'k-mer indexing mode: basic / canonical / primary [basic]'
  type: boolean?
  inputBinding:
    prefix: --mode
- id: in_no_postprocessing
  doc: do not erase redundant dummy edges after concatenation [off]
  type: boolean?
  inputBinding:
    prefix: --no-postprocessing
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
- id: in_o
  doc: ''
  type: string?
  inputBinding:
    prefix: -o
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/metagraph:0.2.0--h74b8f77_0
cwlVersion: v1.1
baseCommand:
- metagraph
- concatenate
