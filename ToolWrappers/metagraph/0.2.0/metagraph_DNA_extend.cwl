class: CommandLineTool
id: metagraph_DNA_extend.cwl
inputs:
- id: in_min_count
  doc: '[INT]    min k-mer abundance, including [1]'
  type: boolean?
  inputBinding:
    prefix: --min-count
- id: in_max_count
  doc: '[INT]    max k-mer abundance, excluding [inf]'
  type: boolean?
  inputBinding:
    prefix: --max-count
- id: in_reference
  doc: '[STR]    basename of reference sequence (for parsing VCF files) []'
  type: boolean?
  inputBinding:
    prefix: --reference
- id: in_fwd_and_reverse
  doc: add both forward and reverse complement sequences [off]
  type: boolean?
  inputBinding:
    prefix: --fwd-and-reverse
- id: in_annotator
  doc: '[STR]    annotator to extend []'
  type: boolean?
  inputBinding:
    prefix: --annotator
- id: in_outfile_base
  doc: '[STR] basename of output file []'
  type: File?
  inputBinding:
    prefix: --outfile-base
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
- id: in_file_one
  doc: ''
  type: long
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
  dockerPull: quay.io/biocontainers/metagraph:0.2.0--h74b8f77_0
cwlVersion: v1.1
baseCommand:
- metagraph_DNA
- extend
