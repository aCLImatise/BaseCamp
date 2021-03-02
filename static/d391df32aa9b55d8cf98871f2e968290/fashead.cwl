class: CommandLineTool
id: fashead.cwl
inputs:
- id: in_number_sequence_print
  doc: "[integer], --records=[integer] --number=[integer]\nThe number of sequence\
    \ records to print. Must be a positive\ninteger. Defaults to 10."
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_annotate
  doc: "Annotate sequence descriptions with file names if and when input\nis being\
    \ processed from files."
  type: boolean?
  inputBinding:
    prefix: --annotate
- id: in_join
  doc: "=[string]\nUse [string] to append filenames in descriptions. Use \"\\t\" to\n\
    indicate a tab-character."
  type: boolean?
  inputBinding:
    prefix: --join
- id: in_man
  doc: Print the manual page and exit.
  type: boolean?
  inputBinding:
    prefix: --man
- id: in_log
  doc: "Creates, or appends to, a generic FAST logfile in the current\nworking directory.\
    \ The logfile records date/time of execution,\nfull command with options and arguments,\
    \ and an optional\ncomment."
  type: boolean?
  inputBinding:
    prefix: --log
- id: in_use_name_default
  doc: "[string], --logname=[string]\nUse [string] as the name of the logfile. Default\
    \ is\n\"FAST.log.txt\"."
  type: boolean?
  inputBinding:
    prefix: -L
- id: in_include_comment_logfile
  doc: "[string], --comment=[string]\nInclude comment [string] in logfile. No comment\
    \ is saved by\ndefault."
  type: boolean?
  inputBinding:
    prefix: -C
- id: in_format
  doc: "=[format]\nUse alternative format for input. See man page for \"fasconvert\"\
    \nfor allowed formats. This is for convenience; the FAST tools are\ndesigned to\
    \ exchange data in Fasta format, and \"fasta\" is the\ndefault format for this\
    \ tool."
  type: boolean?
  inputBinding:
    prefix: --format
- id: in_use_fastq_format
  doc: use fastq format as input and output.
  type: boolean?
  inputBinding:
    prefix: -q
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/perl-fast:1.06--pl526_0
cwlVersion: v1.1
baseCommand:
- fashead
