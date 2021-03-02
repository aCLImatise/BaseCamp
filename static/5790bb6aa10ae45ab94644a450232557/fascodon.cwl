class: CommandLineTool
id: fascodon.cwl
inputs:
- id: in_rs_cu
  doc: "Output Relative Synonymous Codon Usage (RSCU) values rather than\nraw frequencies\
    \ (default)."
  type: boolean?
  inputBinding:
    prefix: --rscu
- id: in_use_ncbi_code
  doc: "[int] --code=[int]\nUse NCBI genetic code tableID <int> for translating sequences."
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_codes
  doc: a list of NCBI genetic code tableIDs and exit.
  type: string?
  inputBinding:
    prefix: --codes
- id: in_use_bases_order
  doc: "[string] --base-order=[string]\nUse bases in [string] order to enumerate codons.\
    \ Default is\n\"TCAG.\""
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_verbose
  doc: ",\nIssue warnings to STDERR about sequences with premature stop\ncodons, that\
    \ do not end in stop codons, sequences that are not\ndivisible by 3, etc."
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_amino_order
  doc: "[string] --amino-order=[string]\nEnumerate codons by the amino acids they\
    \ encode. If no option\nargument is given, codons are enumerated in the default\
    \ order\n\"ARNDCQEGHILKMFPSTWYV*\". If option argument is given, it\ndetermines\
    \ which amino acids (codon families) will be analyzed\nand in what order."
  type: boolean?
  inputBinding:
    prefix: --amino-order
- id: in_use_string_join
  doc: "[string] --join=[string]\nUse <string> to join tagged value output in sequence\
    \ record\ndescriptions. Use with argument \"\\t\" to indicate a\ntab-character."
  type: boolean?
  inputBinding:
    prefix: -j
- id: in_table
  doc: Print output in a table to STDOUT.
  type: boolean?
  inputBinding:
    prefix: --table
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
- fascodon
