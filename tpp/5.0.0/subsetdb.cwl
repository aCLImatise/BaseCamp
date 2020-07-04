class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/subsetdb.cwl
inputs:
- id: str__strings_match
  doc: <str>    strings to match
  type: boolean
  inputBinding:
    prefix: -M
- id: str_strings_match_note
  doc: '<str>    strings to not match Note: if -M or -N strings point to file names
    that exist, the match/nomatch accessions will be read from those files; one accession
    per line.'
  type: boolean
  inputBinding:
    prefix: -N
- id: default_n_option
  doc: by default, -N option only excludes entries that pass the -M criteria.  Using
    this option, both -M and -N options are mutually exclusive.
  type: boolean
  inputBinding:
    prefix: -e
- id: str_new_subset
  doc: <str>    new subset database name (default appends .new to input name)
  type: boolean
  inputBinding:
    prefix: -O
- id: put_subset_database
  doc: put subset database in same directory as input database
  type: boolean
  inputBinding:
    prefix: -P
- id: use_casesensitive_default
  doc: use case-sensitive comparisons (default is case in-sensitive)
  type: boolean
  inputBinding:
    prefix: -C
- id: reverse_output_database
  doc: reverse output database ("rev_" appended to description lines.)
  type: boolean
  inputBinding:
    prefix: -R
- id: num_pull_sequences
  doc: <num>    pull out 'num' random sequences from database
  type: boolean
  inputBinding:
    prefix: -r
- id: num_create_files
  doc: <num>    create multiple database files, each with 'num' sequences in them
    (default 400)
  type: boolean
  inputBinding:
    prefix: -s
- id: str_when_reversing
  doc: <str>    when reversing output, append <string> instead of "rev_" to description
    lines. using this parameter invokes -R automatically.
  type: boolean
  inputBinding:
    prefix: -D
- id: print_database_statistics
  doc: print database statistics
  type: boolean
  inputBinding:
    prefix: -S
- id: export_protein_accession
  doc: export protein accession and sequence length to output file
  type: boolean
  inputBinding:
    prefix: -L
- id: verbose_reporting
  doc: verbose reporting
  type: boolean
  inputBinding:
    prefix: -V
- id: cleaveremove_nterm_methionine
  doc: cleave/remove N-term methionine from each sequence
  type: boolean
  inputBinding:
    prefix: -m
- id: fast_a_dot_database
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- subsetdb
