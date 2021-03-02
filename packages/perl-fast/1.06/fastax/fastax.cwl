class: CommandLineTool
id: fastax.cwl
inputs:
- id: in_negate
  doc: return all sequences that are not from the taxon
  type: boolean?
  inputBinding:
    prefix: --negate
- id: in_strict_negate
  doc: "return all sequences that are not from the taxon, but only if\nthey are from\
    \ a recognized taxon"
  type: boolean?
  inputBinding:
    prefix: --strict-negate
- id: in_identifier
  doc: "taxa are searched over sequence identifiers (default is over\ndescriptions)"
  type: boolean?
  inputBinding:
    prefix: --identifier
- id: in_sequence_descriptions_identifers
  doc: "[int], --field=[int]\nsequence descriptions or identifers are split into fields\
    \ and\nfield <int> (1-based) is searched for taxonomic identifiers"
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_fieldmode_split_perlregex
  doc: "[string], --regex-split=[string]\nin field-mode (-f) split on perl-regex <regex>\
    \ instead of the\ndefault separator, which is strings of white-space. Do \"man\n\
    perlre\" and \"man perlfunc\" for split."
  type: boolean?
  inputBinding:
    prefix: -S
- id: in_tax_id_mode
  doc: "NCBI Taxonomic data in sequence records are numeric IDs, not\nnames."
  type: boolean?
  inputBinding:
    prefix: --tax-id-mode
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
- id: in_multi_fast_a_file
  doc: ''
  type: File?
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
- fastax
