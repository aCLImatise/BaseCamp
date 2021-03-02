class: CommandLineTool
id: validate_gtf.pl.cwl
inputs:
- id: in_output_transcript_file
  doc: ': output transcript file'
  type: File?
  inputBinding:
    prefix: -t
- id: in_create_gtf_file
  doc: ": create a fixed gtf file (This may not be possible.\nAlways check the \"\
    fixed\" file)"
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_sets_maximum_number
  doc: ": sets the maximum number of detailed error messages to return per\nerror\
    \ to <count> (default is 5)."
  type: long?
  inputBinding:
    prefix: -e
- id: in_output_list_inframe
  doc: ': output list of inframe stop genes.'
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_suppress_warnings_missing
  doc: ': suppress warnings about missing start/stop'
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_suppress_warnings_bad
  doc: ': suppress warnings about bad splice site sequence'
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_output_list_
  doc: ': output a list of bad genes for "super-clean" training set'
  type: boolean?
  inputBinding:
    prefix: -k
- id: in_output_list_training
  doc: ': output a list of bad genes for training applications'
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_output_list_evaluation
  doc: ': output a list of bad genes for evaluation purposes'
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_more_options
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -MORE_OPTIONS
- id: in_options
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -OPTIONS
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_transcript_file
  doc: ': output transcript file'
  type: File?
  outputBinding:
    glob: $(inputs.in_output_transcript_file)
hints: []
cwlVersion: v1.1
baseCommand:
- validate_gtf.pl
