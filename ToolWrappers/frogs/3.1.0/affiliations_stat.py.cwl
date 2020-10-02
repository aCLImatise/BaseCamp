class: CommandLineTool
id: affiliations_stat.py.cwl
inputs:
- id: in_debug
  doc: Keep temporary files to debug program.
  type: boolean
  inputBinding:
    prefix: --debug
- id: in_taxonomic_ranks
  doc: "[TAXONOMIC_RANKS [TAXONOMIC_RANKS ...]]\nThe ordered ranks levels used in\
    \ the metadata\ntaxonomy. [Default: ['Domain', 'Phylum', 'Class',\n'Order', 'Family',\
    \ 'Genus', 'Species']]"
  type: boolean
  inputBinding:
    prefix: --taxonomic-ranks
- id: in_rarefaction_ranks
  doc: "[RAREFACTION_RANKS [RAREFACTION_RANKS ...]]\nThe ranks that will be evaluated\
    \ in rarefaction.\n[Default: ['Genus']]"
  type: boolean
  inputBinding:
    prefix: --rarefaction-ranks
- id: in_multiple_tag
  doc: "The metadata tag used in BIOM file to store the list\nof possible taxonomies.\
    \ Use this parameter if the\ntaxonomic affiliation has been processed by a software\n\
    that adds several affiliation in the BIOM file\n(example: same score ambiguity)."
  type: File
  inputBinding:
    prefix: --multiple-tag
- id: in_tax_consensus_tag
  doc: "The metadata tag used in BIOM file to store the\nconsensus taxonomy. This\
    \ parameter is used instead\n\"--taxonomy-tag\" when you have several affiliations\n\
    for each OTU."
  type: File
  inputBinding:
    prefix: --tax-consensus-tag
- id: in_taxonomy_tag
  doc: "The metadata tag used in BIOM file to store the\ntaxonomy. Use this parameter\
    \ if the taxonomic\naffiliation has been processed by a software that adds\nonly\
    \ one affiliation or if you does not have a\nmetadata with the consensus taxonomy\
    \ (see \"--tax-\nconsensus-tag\")."
  type: File
  inputBinding:
    prefix: --taxonomy-tag
- id: in_bootstrap_tag
  doc: "The metadata tag used in BIOM file to store the\ntaxonomy bootstraps."
  type: File
  inputBinding:
    prefix: --bootstrap-tag
- id: in_identity_tag
  doc: "The metadata tag used in BIOM file to store the\nalignment identity."
  type: File
  inputBinding:
    prefix: --identity-tag
- id: in_coverage_tag
  doc: "The metadata tag used in BIOM file to store the\nalignment observation coverage."
  type: File
  inputBinding:
    prefix: --coverage-tag
- id: in_input_biom
  doc: 'The input abundance file (format: BIOM).'
  type: File
  inputBinding:
    prefix: --input-biom
- id: in_output_file
  doc: "The output report (format: HTML). [Default:\naffiliations_metrics.html]"
  type: File
  inputBinding:
    prefix: --output-file
- id: in_log_file
  doc: "The list of commands executed.\n"
  type: File
  inputBinding:
    prefix: --log-file
- id: in_v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: "The output report (format: HTML). [Default:\naffiliations_metrics.html]"
  type: File
  outputBinding:
    glob: $(inputs.in_output_file)
cwlVersion: v1.1
baseCommand:
- affiliations_stat.py
