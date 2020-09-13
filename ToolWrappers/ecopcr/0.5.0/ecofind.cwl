class: CommandLineTool
id: ../../../ecofind.cwl
inputs:
- id: in_ll_enable_search
  doc: ': [A]ll enable the search on all alternative names and not only scientific
    names.'
  type: boolean
  inputBinding:
    prefix: -a
- id: in_atabase_containing_match
  doc: ": [D]atabase containing the taxonomy.\nTo match the expected format, the database\n\
    has to be formated first by the ecoPCRFormat.py\nprogram located in the tools\
    \ directory.\nWrite the database radical without any extension."
  type: boolean
  inputBinding:
    prefix: -d
- id: in_ist_taxonomic_rank
  doc: ': [L]ist all taxonomic rank available for -r option'
  type: boolean
  inputBinding:
    prefix: -l
- id: in_ath_add_column
  doc: ': [P]ath : add a column containing the full path for each displayed taxon'
  type: boolean
  inputBinding:
    prefix: -P
- id: in_arents_specifiying_displays
  doc: ": [P]arents : specifiying this option displays all parental tree's information\
    \ for the given taxid."
  type: boolean
  inputBinding:
    prefix: -p
- id: in_given_taxonomic_rank
  doc: ': [R]estrict to given taxonomic rank'
  type: boolean
  inputBinding:
    prefix: -r
- id: in_ons_specifiying_displays
  doc: ": [S]ons: specifiying this option displays all subtree's information for the\
    \ given taxid."
  type: boolean
  inputBinding:
    prefix: -s
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- ecofind
