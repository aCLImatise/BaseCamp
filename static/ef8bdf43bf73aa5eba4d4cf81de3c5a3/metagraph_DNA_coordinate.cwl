class: CommandLineTool
id: metagraph_DNA_coordinate.cwl
inputs:
- id: in_fwd_and_reverse
  doc: process both forward and reverse complement sequences [off]
  type: boolean?
  inputBinding:
    prefix: --fwd-and-reverse
- id: in_annotator
  doc: '[STR]            annotator to update []'
  type: boolean?
  inputBinding:
    prefix: --annotator
- id: in_outfile_base
  doc: '[STR]         basename of output file [<GRAPH>]'
  type: File?
  inputBinding:
    prefix: --outfile-base
- id: in_coord_binsize
  doc: '[INT]        stepsize for k-mer coordinates in input sequences from the fasta
    files [1000]'
  type: boolean?
  inputBinding:
    prefix: --coord-binsize
- id: in_fast
  doc: annotate in fast regime [off]
  type: boolean?
  inputBinding:
    prefix: --fast
- id: in_parallel
  doc: '[INT]             use multiple threads for computation [1]'
  type: boolean?
  inputBinding:
    prefix: --parallel
- id: in_verbose
  doc: switch on verbose output [off]
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_i
  doc: ''
  type: string?
  inputBinding:
    prefix: -i
- id: in_fast_a_one
  doc: ''
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outfile_base
  doc: '[STR]         basename of output file [<GRAPH>]'
  type: File?
  outputBinding:
    glob: $(inputs.in_outfile_base)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/metagraph:0.1.0--hcb16fcb_0
cwlVersion: v1.1
baseCommand:
- metagraph_DNA
- coordinate
