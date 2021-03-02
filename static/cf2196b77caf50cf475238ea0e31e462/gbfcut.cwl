class: CommandLineTool
id: gbfcut.cwl
inputs:
- id: in_perlregexfilter_only_features
  doc: "[=^]<perl-regex>, --qualifier=<qualifier>[=^]<perl-regex>\nFilter only features\
    \ that have a specified qualifier and for\neach qualifier, at least one value\
    \ that either matches (=) or no\nvalue that matches (^) their corresponding perl-regexes.\n\
    Examples of qualifiers: 'product', 'note', 'gene', 'db_xref'.\nMultiple qualifier\
    \ option instances are allowed for the same\ncommand; features will be printed\
    \ for which all qualifier\nexpressions are true."
  type: string?
  inputBinding:
    prefix: -q
- id: in_case_insensitive
  doc: Enable case-insensitive matching of qualifiers.
  type: boolean?
  inputBinding:
    prefix: --case-insensitive
- id: in_key
  doc: "Filter only features with keys that match perl-regex <string>.\nMatching is\
    \ done case-insensitively. Examples of key-matching\nregexes (called \"primary-tags\"\
    \ in BioPerl): 'CDS', 'RNA',\n'CDS|RNA' 'UTR' This regex is always matched case-insensitively."
  type: string?
  inputBinding:
    prefix: --key
- id: in_context
  doc: "Include <int> positions of sequence context for each sequence\nrecord extracted."
  type: long?
  inputBinding:
    prefix: --context
- id: in_join
  doc: "Use <string> as delimiter to concatenate annotation data in\noutput sequence\
    \ record descriptions."
  type: string?
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
- gbfcut
