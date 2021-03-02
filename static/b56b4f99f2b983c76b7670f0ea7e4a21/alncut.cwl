class: CommandLineTool
id: alncut.cwl
inputs:
- id: in_gap_free
  doc: Print only sites that contain no gaps
  type: boolean?
  inputBinding:
    prefix: --gapfree
- id: in_all_gap
  doc: Print only sites that contain exclusively gaps
  type: boolean?
  inputBinding:
    prefix: --allgap
- id: in_pars_inf
  doc: "Print only sites that are parsimoniously informative.\nParsimoniously informative\
    \ sites are variable sites in which at\nleast two different site-characters or\
    \ states are each\nrepresented in at least two different sequences."
  type: boolean?
  inputBinding:
    prefix: --parsinf
- id: in_negate
  doc: "Print set-complement of sites otherwise selected; as a sole\noption, will\
    \ print only variable sites"
  type: boolean?
  inputBinding:
    prefix: --negate
- id: in_verbose
  doc: "Print numbers and indices of sites selected by the criteria to\nSTDERR"
  type: boolean?
  inputBinding:
    prefix: --verbose
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
- alncut
