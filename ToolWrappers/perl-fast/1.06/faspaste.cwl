class: CommandLineTool
id: faspaste.cwl
inputs:
- id: in_identifier
  doc: "Concatenate identifiers. The default join-string is the empty\nstring."
  type: boolean?
  inputBinding:
    prefix: --identifier
- id: in_description
  doc: "Concatenate descriptions. The default join-string is a single\nspace characer."
  type: boolean?
  inputBinding:
    prefix: --description
- id: in_join
  doc: "Use <string> to concatenate data. Use \"\\t\" to indicate a\ntab-character."
  type: string?
  inputBinding:
    prefix: --join
- id: in_repeat
  doc: "Once records are exhausted from any source, repeat the last\nentry from that\
    \ source in subsequent operations."
  type: boolean?
  inputBinding:
    prefix: --repeat
- id: in_recipient
  doc: "Use input source #<int> as template to receive concatenated\ndata. One-based\
    \ indexing is used, with input source 1 as\ndefault."
  type: long?
  inputBinding:
    prefix: --recipient
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
- id: in_fast_q
  doc: "Use fastq format as input and output.\n"
  type: boolean?
  inputBinding:
    prefix: --fastq
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/perl-fast:1.06--pl526_0
cwlVersion: v1.1
baseCommand:
- faspaste
