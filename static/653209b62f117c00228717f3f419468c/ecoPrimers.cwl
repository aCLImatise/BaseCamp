class: CommandLineTool
id: ecoPrimers.cwl
inputs:
- id: in_atabase_match_format
  doc: ": [D]atabase : to match the expected format, the database\nhas to be formated\
    \ first by the ecoPCRFormat.py program located.\nin the ecoPCR/tools directory.\n\
    ecoPCRFormat.py creates three file types :\n.sdx : contains the sequences\n.tdx\
    \ : contains information concerning the taxonomy\n.rdx : contains the taxonomy\
    \ rank\necoPrimer needs all the file type. As a result, you have to write the\n\
    database radical without any extension. For example /ecoPrimerDB/fstvert"
  type: boolean
  inputBinding:
    prefix: -d
- id: in_rror_max_error
  doc: ': [E]rror : max error allowed by oligonucleotide (0 by default)'
  type: boolean
  inputBinding:
    prefix: -e
- id: in_gnore_given_taxonomy
  doc: ': [I]gnore the given taxonomy id (define the counterexample taxon set).'
  type: boolean
  inputBinding:
    prefix: -i
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
- id: in_estricts_search_restrict
  doc: ': [R]estricts the search to the given taxonomic id (restrict the example taxon
    set).'
  type: boolean
  inputBinding:
    prefix: -r
- id: in_xception_taxid_allows
  doc: ': [E]xception taxid allows to indicate than some subclade of example sequences
    are conterexamples.'
  type: boolean
  inputBinding:
    prefix: -E
- id: in_consider_database_sequences
  doc: ': Consider that the database sequences are [c]ircular'
  type: boolean
  inputBinding:
    prefix: -c
- id: in_three_prime_strict
  doc: ': Three prime strict match'
  type: boolean
  inputBinding:
    prefix: '-3'
- id: in_strict_matching_uorum
  doc: ': Strict matching [q]uorum, percentage of the sequences in which strict primers
    are found. By default it is 70'
  type: boolean
  inputBinding:
    prefix: -q
- id: in__ensitivity_quorum
  doc: ': [S]ensitivity quorum'
  type: boolean
  inputBinding:
    prefix: -s
- id: in_required_axon_level
  doc: ': required [t]axon level for results, by default the results are computed
    at species level'
  type: boolean
  inputBinding:
    prefix: -t
- id: in_false_positive_quorum
  doc: ': false positive quorum'
  type: boolean
  inputBinding:
    prefix: -x
- id: in_set_ouble_strand
  doc: ': set in [d]ouble strand mode'
  type: boolean
  inputBinding:
    prefix: -D
- id: in_set_length_default
  doc: ': set the primer length (default 18)'
  type: boolean
  inputBinding:
    prefix: -O
- id: in_set_ingle_strand
  doc: ': Set in [s]ingle strand mode'
  type: boolean
  inputBinding:
    prefix: -S
- id: in_salt_correction_method
  doc: ': Salt correction method for Tm computation (SANTALUCIA : 1 or OWCZARZY:2,
    default=1)'
  type: boolean
  inputBinding:
    prefix: -m
- id: in_salt_contentration_m
  doc: ': Salt contentration in M for Tm computation (default 0.05 M)'
  type: boolean
  inputBinding:
    prefix: -a
- id: in__multi_match
  doc: ': No multi match'
  type: boolean
  inputBinding:
    prefix: -U
- id: in_define_eference_sequence
  doc: ': Define the [R]eference sequence identifier (must be part of example set)'
  type: boolean
  inputBinding:
    prefix: -R
- id: in_print_list_identifier
  doc: ': Print the list of all identifier of sequences present in the database'
  type: boolean
  inputBinding:
    prefix: -A
- id: in_remove_data_step
  doc: ': Remove data mining step during  strict primer identification'
  type: boolean
  inputBinding:
    prefix: -f
- id: in_store_statistic_file
  doc: ': Store statistic file about memory usage during strict primer identification'
  type: boolean
  inputBinding:
    prefix: -v
- id: in_print_sets_primers
  doc: ': Print sets of primers (may take several minutes after primers have been
    designed!)'
  type: boolean
  inputBinding:
    prefix: -p
- id: in_ignore_pairs_having
  doc: ': Ignore pairs having specificity below this Threshold'
  type: boolean
  inputBinding:
    prefix: -T
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- ecoPrimers
