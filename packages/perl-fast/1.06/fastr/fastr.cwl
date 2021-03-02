class: CommandLineTool
id: fastr.cwl
inputs:
- id: in_sequence
  doc: Transliterate sequences (identifiers by default).
  type: boolean?
  inputBinding:
    prefix: --sequence
- id: in_description
  doc: Transliterate descriptions.
  type: boolean?
  inputBinding:
    prefix: --description
- id: in_delete
  doc: Delete found but unreplaced characters.
  type: boolean?
  inputBinding:
    prefix: --delete
- id: in_squash
  doc: Squash duplicate replaced characters.
  type: boolean?
  inputBinding:
    prefix: --squash
- id: in_complement
  doc: "Character complement SEARCHLIST. The last character of\nREPLACELIST replaces\
    \ all characters not in SEARCHLIST."
  type: boolean?
  inputBinding:
    prefix: --complement
- id: in_no_replace
  doc: Delete or squash characters in SEARCHLIST.
  type: boolean?
  inputBinding:
    prefix: --no-replace
- id: in_strict
  doc: "Transliterate illegal sequence characters to \"N\" (DNA or RNA) or\n\"X\"\
    \ (protein). Takes precedence over --iupac. Other options\ndisallowed in combination\
    \ except --ambig and --fastq. For DNA,\nequivalent to: \"fastr -sc ACTGactg\\\
    - N\""
  type: boolean?
  inputBinding:
    prefix: --strict
- id: in_iupac
  doc: "illegal sequence characters (including IUPAC\nambiguities) to \"N\" (DNA or\
    \ RNA) or \"X\" (protein). Other options\ndisallowed in combination except --ambig\
    \ and --fastq. For DNA,\nequivalent to:\n\"fastr -sc ACTGactgMRWSYKVHDBXNmrwsykvhdbxn\\\
    - N\""
  type: string?
  inputBinding:
    prefix: --iupac
- id: in_de_gap
  doc: "gap characters \"-\" from each sequence. May only be\ncombined with no other\
    \ option except the --fastq option.\nEquivalent to:\n\"fastr -snD -- -\""
  type: string?
  inputBinding:
    prefix: --degap
- id: in_am_big
  doc: "Use <char> to replace illegal characters instead of \"N\" or \"X\"\nwith --strict\
    \ or --iupac"
  type: string?
  inputBinding:
    prefix: --ambig
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
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/perl-fast:1.06--pl526_0
cwlVersion: v1.1
baseCommand:
- fastr
