class: CommandLineTool
id: fascomp.cwl
inputs:
- id: in_normalize
  doc: Compute relative frequencies.
  type: boolean?
  inputBinding:
    prefix: --normalize
- id: in_table
  doc: Output a table to STDOUT.
  type: boolean?
  inputBinding:
    prefix: --table
- id: in_use_string_join
  doc: "[string] --join=[string]\nUse <string> to join tagged values in descriptions.\
    \ Use \"\\t\" to\nindicate a tab-character."
  type: boolean?
  inputBinding:
    prefix: -j
- id: in_strict
  doc: Output moltype-dependent character header for table-mode.
  type: boolean?
  inputBinding:
    prefix: --strict
- id: in_iupac
  doc: Output character header including ambiguities for table-mode.
  type: boolean?
  inputBinding:
    prefix: --iupac
- id: in_alphabet
  doc: "Tally only characters if they are in the set <string>, as in\n\"ACGT-\"."
  type: string?
  inputBinding:
    prefix: --alphabet
- id: in_precision
  doc: "Print relative frequencies with <int> digits after the decimal\npoint."
  type: long?
  inputBinding:
    prefix: --precision
- id: in_width
  doc: Print frequencies in fields of width <int>
  type: long?
  inputBinding:
    prefix: --width
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
  doc: "use fastq format as input and output.\n"
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
- fascomp
