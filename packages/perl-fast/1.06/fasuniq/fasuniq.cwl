class: CommandLineTool
id: fasuniq.cwl
inputs:
- id: in_description
  doc: Removes duplicate sequences by matching on descriptions.
  type: boolean?
  inputBinding:
    prefix: --description
- id: in_identifier
  doc: Removes duplicate sequences by matching on identifiers.
  type: boolean?
  inputBinding:
    prefix: --identifier
- id: in_count
  doc: Annotate the number of redundant records into descriptions.
  type: boolean?
  inputBinding:
    prefix: --count
- id: in_use_string_append
  doc: "[string], --join=[string]\nUse <string> to append count data to sequence record\n\
    descriptions. Use with argument \"\\t\" to indicate a\ntab-character."
  type: boolean?
  inputBinding:
    prefix: -j
- id: in_concat
  doc: "=[string]\nConcatenate identifiers of repeated sequences in output. Use\n\
    delimiter [string] to concatenate identifiers. If none given,\ndefault is \":\""
  type: boolean?
  inputBinding:
    prefix: --concat
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
- id: in_specify_type_sequence
  doc: "[dna|rna|protein], --moltype=[dna|rna|protein]\nSpecify the type of sequence\
    \ on input (should not be needed in\nmost cases, but sometimes Bioperl cannot\
    \ guess and complains\nwhen processing data)."
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_fast_q
  doc: "Use fastq format as input and output.\n"
  type: boolean?
  inputBinding:
    prefix: --fastq
- id: in_multi_fast_a_data_on_stdin
  doc: ''
  type: string?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/perl-fast:1.06--pl526_0
cwlVersion: v1.1
baseCommand:
- fasuniq
