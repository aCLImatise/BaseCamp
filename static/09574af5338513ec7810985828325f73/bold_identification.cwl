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
- id: in_outfile_prefix
  doc: outfile prefix
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
    \nfile."
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_chimera_check_purpose
  doc: "For chimera check purpose. If set, for each sequence,\nI will query the BOLD\
    \ database using the subsequences\nfrom 5'- and 3'-ends with a length of '-q <int>'\
    \ bp,\nrespectively"
  type: boolean?
  inputBinding:
    prefix: -C
- id: in_length_subsequences_chimera
  doc: The length of subsequences for chimera check [400]
  type: long?
  inputBinding:
    prefix: -q
- id: in_debug_mode_output
  doc: debug mode output [False]
  type: boolean?
  inputBinding:
    prefix: -D
- id: in_zero_dot_zero_dot_two_seven
  doc: 'optional arguments:'
  type: double
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/bold-identification:0.0.27--py_0
cwlVersion: v1.1
baseCommand:
- bold_identification
