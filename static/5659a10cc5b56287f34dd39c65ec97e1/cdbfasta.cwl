class: CommandLineTool
id: cdbfasta.cwl
inputs:
- id: in_index_file_named
  doc: "index file will be named <index_file>; if not given,\nthe index filename is\
    \ database name plus the suffix '.cidx'"
  type: File?
  inputBinding:
    prefix: -o
- id: in_string_characters_beginning
  doc: "a string of characters at the beginning of line\nmarking the start of a record\
    \ (default: '>')"
  type: string?
  inputBinding:
    prefix: -r
- id: in_input_fastq_format
  doc: "input as fastq format, i.e. with '@' as record delimiter\nand with records\
    \ expected to have at least 4 lines"
  type: long?
  inputBinding:
    prefix: -Q
- id: in_compressed_file_be
  doc: "is compressed into the file <compressed_db>\nbefore indexing (<fastafile>\
    \ can be \"-\" or \"stdin\"\nin order to get the input records from stdin)"
  type: File?
  inputBinding:
    prefix: -z
- id: in_extraneous_characters_space
  doc: "extraneous characters from *around* the space delimited\ntokens, for the multikey\
    \ options below (-m,-n,-f);\nDefault <stripendchars> set is: '\",`.(){}/[]!:;~|><+-"
  type: string?
  inputBinding:
    prefix: -s
- id: in_option_create_entries
  doc: "(\"multi-key\" option) create hash entries pointing to\nthe same record for\
    \ all tokens found in\nthe defline"
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_same_m_takes
  doc: "same as -m, but only takes the first <numkeys>\ntokens from the defline"
  type: long?
  inputBinding:
    prefix: -n
- id: in_space_delimited_fields
  doc: "*space* delimited tokens (fields) in the defline as given\nby LIST of fields\
    \ or fields ranges (the same syntax as UNIX 'cut')"
  type: string?
  inputBinding:
    prefix: -f
- id: in_exclude_indexing_m
  doc: "exclude from indexing all the words found\nin the file <stopwordslist> (for\
    \ options -m, -n and -k)"
  type: File?
  inputBinding:
    prefix: -w
- id: in_case_insensitive_indexing
  doc: "case insensitive indexing (i.e. create additional keys for\nall-lowercase\
    \ tokens used for indexing from the defline"
  type: string?
  inputBinding:
    prefix: -i
- id: in_deflines_format_dbaccessiondbaccession
  doc: "deflines in the format: db1|accession1|db2|accession2|...,\nonly the first\
    \ db-accession pair ('db1|accession1') is taken as key"
  type: long?
  inputBinding:
    prefix: -c
- id: in_also_subsequent_dbaccession
  doc: ", but also subsequent db|accession constructs are indexed,\nalong with the\
    \ full (default) token; additionally,\nall nrdb concatenated accessions found\
    \ in the defline\nare parsed and stored (assuming 0x01 or '^|^' as separators)"
  type: long?
  inputBinding:
    prefix: -C
- id: in_mode_indexes_part
  doc: "mode: like -C option, but indexes the 'accession'\npart for all 'db|accession'\
    \ constructs found"
  type: string?
  inputBinding:
    prefix: -a
- id: in_accessions_constructs_used
  doc: "(both accessions and 'db|accession'\nconstructs are used as keys"
  type: string?
  inputBinding:
    prefix: -A
- id: in_program_version_exit
  doc: program version and exit
  type: string?
  inputBinding:
    prefix: -v
- id: in_invalid
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_fast_a_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_argument
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- cdbfasta
