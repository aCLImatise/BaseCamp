class: CommandLineTool
id: obiaddtaxids.cwl
inputs:
- id: in_u
  doc: \
  type: string?
  inputBinding:
    prefix: -u
- id: in_debug
  doc: Set logging in debug mode
  type: boolean?
  inputBinding:
    prefix: --DEBUG
- id: in_without_progress_bar
  doc: desactivate progress bar
  type: boolean?
  inputBinding:
    prefix: --without-progress-bar
- id: in_genus_found
  doc: "(not with UNITE databases) file used to store\nsequences with the genus found."
  type: File?
  inputBinding:
    prefix: --genus_found
- id: in_unidentified
  doc: file used to store completely unidentified sequences.
  type: File?
  inputBinding:
    prefix: --unidentified
- id: in_dirty
  doc: "(not with UNITE databases) if chosen, ALL the words in\nthe name used to identify\
    \ the sequences will be\nsearched when neither the exact name nor the genus\n\
    have been found. Only use if the sequences in your\ndatabase are badly named with\
    \ useless words or numbers\nin the name etc. The sequences identified this way\n\
    will be written in <FILENAME>."
  type: File?
  inputBinding:
    prefix: --dirty
- id: in_format
  doc: "type of the database with the taxa to be added.\nPossibilities : 'raw', 'UNITE_FULL',\
    \ 'UNITE_GENERAL'\nor 'SILVA'.The UNITE_FULL format is the one used for\nthe 'Full\
    \ UNITE+INSD dataset', and the UNITE_GENERAL\nformat is the one used for the 'General\
    \ FASTA\nrelease'. Default : raw."
  type: string?
  inputBinding:
    prefix: --format
- id: in_key_name
  doc: "name of the key attribute containing the taxon name in\ndatabases of 'raw'\
    \ type. Default : the taxon name is\nthe id of the sequence. The taxon name MUST\
    \ have '_'\nbetween the words of the name when it's the id, and\nCAN be of this\
    \ form when it's in a field."
  type: string?
  inputBinding:
    prefix: --key-name
- id: in_restricting_ancestor
  doc: "can be a word or a taxid (number). Enables to restrict\nthe search of taxids\
    \ under a specified ancestor. If\nit's a word, it's the field containing the ancestor's\n\
    taxid in each sequence's header (can be different for\neach sequence). If it's\
    \ a number, it's the taxid of\nthe ancestor (in which case it's the same for all\
    \ the\nsequences)"
  type: long?
  inputBinding:
    prefix: --restricting_ancestor
- id: in_database
  doc: ecoPCR taxonomy Database name
  type: File?
  inputBinding:
    prefix: --database
- id: in_taxonomy_dump
  doc: "NCBI Taxonomy dump repository name\n"
  type: File?
  inputBinding:
    prefix: --taxonomy-dump
- id: in_database_dot
  doc: '- If the input file is an ``OBITools`` extended :doc:`fasta <../fasta>` format,
    the ``-k`` option'
  type: string
  inputBinding:
    position: 0
- id: in_bash
  doc: '> obiaddtaxids -k species_name -g genus_identified.fasta \'
  type: string
  inputBinding:
    position: 0
- id: in_file_dot
  doc: '- Otherwise the sequence record is stored in the ``unidentified.fasta`` file.'
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- obiaddtaxids
