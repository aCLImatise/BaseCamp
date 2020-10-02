class: CommandLineTool
id: ecoPCR.cwl
inputs:
- id: in_salt_concentration_m
  doc: ': Salt concentration in M for Tm computation (default 0.05 M)'
  type: boolean
  inputBinding:
    prefix: -a
- id: in_consider_database_sequences
  doc: ': Consider that the database sequences are [c]ircular'
  type: boolean
  inputBinding:
    prefix: -c
- id: in_atabase_match_format
  doc: ": [D]atabase : to match the expected format, the database\nhas to be formated\
    \ first by the ecoPCRFormat.py program located.\nin the tools directory.\necoPCRFormat.py\
    \ creates three file types :\n.sdx : contains the sequences\n.tdx : contains information\
    \ concerning the taxonomy\n.rdx : contains the taxonomy rank\necoPCR needs all\
    \ the file type. As a result, you have to write the\ndatabase radical without\
    \ any extension. For example /ecoPCRDB/gbmam"
  type: boolean
  inputBinding:
    prefix: -d
- id: in_keeps_specified_number
  doc: ": Keeps the specified number of nucleotides on each side of the in silico\n\
    amplified sequences (including the amplified DNA fragment plus the two target\n\
    sequences of the primers)."
  type: boolean
  inputBinding:
    prefix: -D
- id: in_rror_max_errors
  doc: ': [E]rror : max errors allowed by oligonucleotide (0 by default)'
  type: boolean
  inputBinding:
    prefix: -e
- id: in_gnore_taxonomy_d
  doc: ": [I]gnore the given taxonomy id.\nTaxonomy id are available using the ecofind\
    \ program.\nsee its help typing ecofind -h for more information."
  type: boolean
  inputBinding:
    prefix: -i
- id: in_ingdom_mode_set
  doc: ": [K]ingdom mode : set the kingdom mode\nsuper kingdom mode by default."
  type: boolean
  inputBinding:
    prefix: -k
- id: in_minimum_ength_define
  doc: ': minimum [L]ength : define the minimum amplication length.'
  type: boolean
  inputBinding:
    prefix: -l
- id: in_maximum_ength_define
  doc: ': maximum [L]ength : define the maximum amplicationlength.'
  type: boolean
  inputBinding:
    prefix: -L
- id: in_salt_correction_method
  doc: ": Salt correction method for Tm computation (SANTALUCIA : 1\nor OWCZARZY:2,\
    \ default=1)"
  type: boolean
  inputBinding:
    prefix: -m
- id: in_estricts_search_given
  doc: ": [R]estricts the search to the given taxonomic id.\nTaxonomy id are available\
    \ using the ecofind program.\nsee its help typing ecofind -h for more information."
  type: boolean
  inputBinding:
    prefix: -r
- id: in_nucleo_tid_ic_patterns
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- ecoPCR
