class: CommandLineTool
id: ../../../bold_identification.cwl
inputs:
- id: input_file_name
  doc: input file name
  type: string
  inputBinding:
    prefix: -i
- id: input_file_format
  doc: input file format [fasta]
  type: string
  inputBinding:
    prefix: -f
- id: outfile
  doc: outfile
  type: string
  inputBinding:
    prefix: -o
- id: database_to_search
  doc: database to search [COX1]
  type: string
  inputBinding:
    prefix: -d
- id: how_many_first
  doc: how many first top hits will be output. [1]
  type: long
  inputBinding:
    prefix: -n
- id: maximum_submission_time
  doc: Maximum submission time for a sequence, useful for handling TimeOutException.
    [4]
  type: long
  inputBinding:
    prefix: -r
- id: continuous_mode_jump
  doc: continuous mode, jump over the ones already in "-o" file, will resubmit all
    the remained. use "-cc" to also jump over the ones in "*.NoBoldMatchError.fasta"
    file. [0]
  type: boolean
  inputBinding:
    prefix: -c
- id: debug_mode_output
  doc: debug mode output [False]
  type: boolean
  inputBinding:
    prefix: -D
outputs: []
cwlVersion: v1.1
baseCommand:
- bold_identification
