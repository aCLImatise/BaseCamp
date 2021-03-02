class: CommandLineTool
id: bold_identification.cwl
inputs:
- id: in_input_file_name
  doc: input file name
  type: File?
  inputBinding:
    prefix: -i
- id: in_input_file_format
  doc: input file format [fasta]
  type: File?
  inputBinding:
    prefix: -f
- id: in_outfile
  doc: outfile
  type: string?
  inputBinding:
    prefix: -o
- id: in_database_to_search
  doc: database to search [COX1]
  type: string?
  inputBinding:
    prefix: -d
- id: in_how_many_first
  doc: how many first top hits will be output. [1]
  type: long?
  inputBinding:
    prefix: -n
- id: in_maximum_submission_time
  doc: "Maximum submission time for a sequence, useful for\nhandling TimeOutException.\
    \ [4]"
  type: long?
  inputBinding:
    prefix: -r
- id: in_continuous_mode_jump
  doc: "continuous mode, jump over the ones already in \"-o\"\nfile, will resubmit\
    \ all the remained. use \"-cc\" to\nalso jump over the ones in \"*.NoBoldMatchError.fasta\"\
    \nfile. [0]"
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_debug_mode_output
  doc: debug mode output [False]
  type: boolean?
  inputBinding:
    prefix: -D
- id: in_zero_dot_zero_dot_two_five
  doc: 'optional arguments:'
  type: double
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- bold_identification
