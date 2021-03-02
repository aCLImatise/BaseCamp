class: CommandLineTool
id: fastaxsort.cwl
inputs:
- id: in_tax_id_mode
  doc: NCBI Taxonomic data in sequence records are IDs, not names.
  type: boolean?
  inputBinding:
    prefix: --tax-id-mode
- id: in_indent_i_fier
  doc: "Taxa are sorted using sequence identifiers (default uses whole\ndescriptions)"
  type: boolean?
  inputBinding:
    prefix: --indentifier
- id: in_field
  doc: "Sort sequence records by values at a specific field in sequence\ndescriptions\
    \ or identifiers. With this option, the description\nor identifier is split into\
    \ fields using strings of white space\nas field delimiters (the default Perl delimiter\
    \ for splitting\nlines of data into fields, which are invalid characters in\n\
    sequence identfiers).\nThis option takes a mandatory integer option argument giving\
    \ the\nindex for which field to sort by. One-based indexing is used, so\nthe first\
    \ field after the sequence identifier has index 1. As\nstandard in Perl, negative\
    \ indices count backwards from the last\nfield; field \"-1\" is the last field,\
    \ \"-2\" is the second-to-last\netc. Sequence records for which the specified\
    \ field does not\nexist will sort on a null key."
  type: boolean?
  inputBinding:
    prefix: --field
- id: in_split_on_regex
  doc: "Use regex <regex> to split descriptions/identifiers for the -f\noption instead\
    \ of the perl default (which splits on one or more\nwhitespace characters). Special\
    \ characters must be quoted to\nprotect them from the shell."
  type: boolean?
  inputBinding:
    prefix: --split-on-regex
- id: in_annotate
  doc: "Add FAST taxonomic addresses in dot-hex notation to sequence\nrecord descriptions"
  type: boolean?
  inputBinding:
    prefix: --annotate
- id: in_use_append_addresses
  doc: "[string] --join=[strong]\nUse [string] to append FAST taxonomic addresses\
    \ to sequence\nrecord descriptions, instead of default \" \". Use \"\\t\" to\n\
    indicate a tab-character."
  type: boolean?
  inputBinding:
    prefix: -j
- id: in_index
  doc: "of printing the sorted sequence records, print a key\nthat maps fastaxsort\
    \ taxonomically generated taxonomic addresses\nin dot-hexadecimal notation to\
    \ NCBI taxonomic names or IDs."
  type: string?
  inputBinding:
    prefix: --index
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
- fastaxsort
