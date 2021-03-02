class: CommandLineTool
id: alnpi.cwl
inputs:
- id: in_suppress
  doc: Supress header output
  type: boolean?
  inputBinding:
    prefix: --suppress
- id: in_latex
  doc: LaTeX-style output
  type: boolean?
  inputBinding:
    prefix: --latex
- id: in_pairwise
  doc: Statistics are calculated pairwise over all sequences
  type: boolean?
  inputBinding:
    prefix: --pairwise
- id: in_window
  doc: "Sliding window analysis. Option argument <string> expected to be\nin the form\
    \ \"window-size:step-size:statistic\" where window-size\nand step-size are positive\
    \ integers and \"statistic\" may be one\nof \"p\", \"s\" or \"d\" for nucleotide\
    \ diversity, Watterson estimator\nor Tajima's D respectively."
  type: long?
  inputBinding:
    prefix: --window
- id: in_absolute
  doc: "Output a smaller set of statistics not normalized by number of\ngap-free sites."
  type: boolean?
  inputBinding:
    prefix: --absolute
- id: in_label
  doc: label for the input data, to be placed in the output.
  type: string?
  inputBinding:
    prefix: --label
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
    \ guess and complains\nwhen processing data).\n"
  type: boolean?
  inputBinding:
    prefix: -m
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/perl-fast:1.06--pl526_0
cwlVersion: v1.1
baseCommand:
- alnpi
