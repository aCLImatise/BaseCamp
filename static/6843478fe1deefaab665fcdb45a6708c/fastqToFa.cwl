class: CommandLineTool
id: fastqToFa.cwl
inputs:
- id: in_name_verify
  doc: "='string' - for multi-line fastq files, 'string' must\nmatch somewhere in\
    \ the sequence names in order to correctly\nidentify the next sequence block (e.g.:\
    \ -nameVerify='Supercontig_')"
  type: boolean?
  inputBinding:
    prefix: -nameVerify
- id: in_qual
  doc: "- output quality scores to specifed file\n(default: quality scores are ignored)"
  type: File?
  inputBinding:
    prefix: -qual
- id: in_qual_sizes
  doc: '- write sizes file for the quality scores'
  type: File?
  inputBinding:
    prefix: -qualSizes
- id: in_no_errors
  doc: "- warn only on problems, do not error out\n(specify -verbose=3 to see warnings"
  type: boolean?
  inputBinding:
    prefix: -noErrors
- id: in_solexa
  doc: "- use Solexa/Illumina quality score algorithm\n(instead of Phread quality)"
  type: boolean?
  inputBinding:
    prefix: -solexa
- id: in_verbose
  doc: '- set warning level to get some stats output during processing'
  type: long?
  inputBinding:
    prefix: -verbose
- id: in_in_dot_fast_q
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_qual
  doc: "- output quality scores to specifed file\n(default: quality scores are ignored)"
  type: File?
  outputBinding:
    glob: $(inputs.in_qual)
hints: []
cwlVersion: v1.1
baseCommand:
- fastqToFa
