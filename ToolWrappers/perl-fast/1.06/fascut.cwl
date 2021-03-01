class: CommandLineTool
id: fascut.cwl
inputs:
- id: in_identifier
  doc: "Cut identifiers by character. Use the -S option to alter how the\nidentifier\
    \ data is split."
  type: boolean?
  inputBinding:
    prefix: --identifier
- id: in_description
  doc: "Cut descriptions by character. Use the -f option to split\ndescriptions by\
    \ strings of whitespace instead. Use the -S option\nto split the description with\
    \ an arbitrary regex."
  type: boolean?
  inputBinding:
    prefix: --description
- id: in_field
  doc: "Cut descriptions by field. By default, the description is split\non strings\
    \ of white-space."
  type: boolean?
  inputBinding:
    prefix: --field
- id: in_split_on_regex
  doc: "Use regex to split data. Special characters in the regex option\nargument\
    \ must be quoted to protect them from the shell."
  type: string?
  inputBinding:
    prefix: --split-on-regex
- id: in_join
  doc: "Paste selected fields together with string string for new\ndescription. Default\
    \ is a single space character \" \". Use \"\\t\"\nto indicate a tab-character."
  type: string?
  inputBinding:
    prefix: --join
- id: in_strict
  doc: "This option will implement strict range checking on the\ncoordinates. When\
    \ used this option will skip any sequences for\nwhich the coordinates are out\
    \ of range (the default is to output\nthe longest valid subsequence contained\
    \ within the range)."
  type: boolean?
  inputBinding:
    prefix: --strict
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
- fascut
