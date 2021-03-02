class: CommandLineTool
id: faswc.cwl
inputs:
- id: in_sequences
  doc: Output tallies of sequences only by file and/or in total.
  type: File?
  inputBinding:
    prefix: --sequences
- id: in_characters
  doc: "Output tallies of sequence characters only by file and/or in\ntotal."
  type: File?
  inputBinding:
    prefix: --characters
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
  doc: "=[format]\nUse alternative format for input. See man page for \"faslen\" for\n\
    allowed formats. This is for convenience; the FAST tools are\ndesigned to exchange\
    \ data in Fasta format, and \"fasta\" is the\ndefault format for this tool."
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
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_sequences
  doc: Output tallies of sequences only by file and/or in total.
  type: File?
  outputBinding:
    glob: $(inputs.in_sequences)
- id: out_characters
  doc: "Output tallies of sequence characters only by file and/or in\ntotal."
  type: File?
  outputBinding:
    glob: $(inputs.in_characters)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/perl-fast:1.06--pl526_0
cwlVersion: v1.1
baseCommand:
- faswc
