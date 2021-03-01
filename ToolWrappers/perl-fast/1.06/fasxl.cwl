class: CommandLineTool
id: fasxl.cwl
inputs:
- id: in_annotate
  doc: "This option outputs translations as tagged values in\ndescriptions. By default\
    \ translations are outputted in the\nsequence."
  type: boolean?
  inputBinding:
    prefix: --annotate
- id: in_join
  doc: "Use a <string> to join data in the description. Default is a\nspace character.\
    \ Use \"\\t\" to indicate a tab-character."
  type: string?
  inputBinding:
    prefix: --join
- id: in_gapped
  doc: This option enables translation of gapped sequences.
  type: boolean?
  inputBinding:
    prefix: --gapped
- id: in_keep
  doc: "Keep inputted sequences in the output. This option also enables\nthe translation\
    \ of gapped sequences."
  type: boolean?
  inputBinding:
    prefix: --keep
- id: in_codon_two_aa
  doc: "turn codon alignment into a protein alignment (best used for\ncodon-based\
    \ alignments, where gaps are mod 3 length and seqs are\nto be translated in frame\
    \ 0)"
  type: boolean?
  inputBinding:
    prefix: --codon2aa
- id: in_cds
  doc: "This option is deprecated. Treat as CDS (for bacterial code, for\nexample,\
    \ treat init codons as M)."
  type: boolean?
  inputBinding:
    prefix: --cds
- id: in_frame
  doc: "Specify the frame for translation [0,1,2]. By default frame 0 is\nused."
  type: long?
  inputBinding:
    prefix: --frame
- id: in_tables
  doc: Output a list of NCBI genetic code tableIDs and exit.
  type: boolean?
  inputBinding:
    prefix: --tables
- id: in_translate_sequence_three
  doc: Translate each sequence in all three forward frames.
  type: boolean?
  inputBinding:
    prefix: '-3'
- id: in_translate_sequence_six
  doc: Translate each sequence in all six frames.
  type: boolean?
  inputBinding:
    prefix: '-6'
- id: in_stop
  doc: "Specify a string to representing stop codons. By default \"*\" is\nused."
  type: string?
  inputBinding:
    prefix: --stop
- id: in_unknown
  doc: "Specify a string representing unknown amino acids. By default\n\"X\" is used."
  type: string?
  inputBinding:
    prefix: --unknown
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
- fasxl
