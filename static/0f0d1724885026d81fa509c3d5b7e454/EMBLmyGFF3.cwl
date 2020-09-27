class: CommandLineTool
id: EMBLmyGFF3.cwl
inputs:
- id: in_accession
  doc: "Bolean. Accession number(s) for the entry. Default\nvalue: XXX. The proper\
    \ value is automatically filled\nup by ENA during the submission by a unique accession\n\
    number they will assign. The accession number is used\nto set up the AC line and\
    \ the first token of the ID\nline as well. Please visit [this\npage](https://www.ebi.ac.uk/ena/submit/accession-\n\
    number-formats) and [this\none](https://www.ebi.ac.uk/ena/submit/sequence-\nsubmission)\
    \ to learn more about it. Activating the\noption will set the Accession number\
    \ with the fasta\nsequence identifier."
  type: boolean
  inputBinding:
    prefix: --accession
- id: in_created
  doc: "Creation time of the original entry. The default value\nis the date of the\
    \ day."
  type: string
  inputBinding:
    prefix: --created
- id: in_data_class
  doc: "Data class of the sample. Default value 'XXX'. This\noption is used to set\
    \ up the 5th token of the ID line."
  type: string
  inputBinding:
    prefix: --data_class
- id: in_organelle
  doc: Sample organelle. No default value.
  type: string
  inputBinding:
    prefix: --organelle
- id: in_locus_tag
  doc: "Locus tag prefix used to set up the prefix of the\nlocus_tag qualifier. The\
    \ locus tag has to be\nregistered at ENA prior any submission. More\ninformation\n\
    [here](https://www.ebi.ac.uk/ena/submit/locus-tags)."
  type: string
  inputBinding:
    prefix: --locus_tag
- id: in_keyword
  doc: Keywords for the entry. No default value.
  type: string[]
  inputBinding:
    prefix: --keyword
- id: in_classification
  doc: "Organism classification e.g 'Eukaryota; Opisthokonta;\nMetazoa'. The default\
    \ value is the classification\nfound in the NCBI taxonomy DB from the species/taxid\n\
    given as --species parameter. If none is found, 'Life'\nwill be the default value."
  type: string
  inputBinding:
    prefix: --classification
- id: in_molecule_type
  doc: Molecule type of the sample. No default value.
  type: string
  inputBinding:
    prefix: --molecule_type
- id: in_output
  doc: Output filename.
  type: File
  inputBinding:
    prefix: --output
- id: in_project_id
  doc: "Project ID. Default is 'XXX' (This is used to set up\nthe PR line)."
  type: string
  inputBinding:
    prefix: --project_id
- id: in_quiet
  doc: Decrease verbosity.
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_transl_table
  doc: "Translation table. No default. (This is used to set up\nthe translation table\
    \ qualifier transl_table of the\nCDS features.) Please visit [NCBI genetic code](https:\n\
    //www.ncbi.nlm.nih.gov/Taxonomy/Utils/wprintgc.cgi)\nfor more information."
  type: string
  inputBinding:
    prefix: --transl_table
- id: in_species
  doc: "Sample species, formatted as 'Genus species' or taxid.\nNo default. (This\
    \ is used to set up the OS line.)"
  type: string
  inputBinding:
    prefix: --species
- id: in_topology
  doc: "Sequence topology. No default. (This is used to set up\nthe Topology that\
    \ is the 3rd token of the ID line.)"
  type: string
  inputBinding:
    prefix: --topology
- id: in_verbose
  doc: Increase verbosity.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_taxonomy
  doc: "Source taxonomy. Default value 'XXX'. This option is\nused to set the taxonomic\
    \ division within ID line (6th\ntoken)."
  type: string
  inputBinding:
    prefix: --taxonomy
- id: in_gzip
  doc: Gzip output file.
  type: File
  inputBinding:
    prefix: --gzip
- id: in_advanced_help
  doc: "Display advanced information of the parameter\nspecified or of all parameters\
    \ if none specified."
  type: string
  inputBinding:
    prefix: --advanced_help
- id: in_de
  doc: Description. Default value 'XXX'.
  type: string
  inputBinding:
    prefix: --de
- id: in_author
  doc: Author for the reference. No default value.
  type: string[]
  inputBinding:
    prefix: --author
- id: in_rc
  doc: Reference Comment. No default value.
  type: string
  inputBinding:
    prefix: --rc
- id: in_rg
  doc: "Reference Group, the working groups/consortia that\nproduced the record. Default\
    \ value 'XXX'."
  type: string
  inputBinding:
    prefix: --rg
- id: in_rl
  doc: Reference publishing location. No default value.
  type: string
  inputBinding:
    prefix: --rl
- id: in_rt
  doc: Reference Title. No default value.
  type: string
  inputBinding:
    prefix: --rt
- id: in_rx
  doc: Reference cross-reference. No default value
  type: string
  inputBinding:
    prefix: --rx
- id: in_email
  doc: "Email used to fetch information from NCBI taxonomy\ndatabase. Default value\
    \ 'EMBLmyGFF3@tool.org'."
  type: long
  inputBinding:
    prefix: --email
- id: in_expose_translations
  doc: "Copy feature and attribute mapping files to the\nworking directory. They will\
    \ be used as mapping files\ninstead of the default internal JSON files. You may\n\
    modify them as it suits you."
  type: boolean
  inputBinding:
    prefix: --expose_translations
- id: in_force_unknown_features
  doc: "Force to keep feature types not accepted by EMBL. /!\\\nOption not suitable\
    \ for submission purpose."
  type: boolean
  inputBinding:
    prefix: --force_unknown_features
- id: in_force_un_complete_features
  doc: "Force to keep features whithout all the mandatory\nqualifiers. /!\\ Option\
    \ not suitable for submission\npurpose."
  type: boolean
  inputBinding:
    prefix: --force_uncomplete_features
- id: in_interleave_genes
  doc: Print gene features with interleaved mRNA and CDS
  type: boolean
  inputBinding:
    prefix: --interleave_genes
- id: in_locus_numbering_start
  doc: Start locus numbering with the provided value.
  type: string
  inputBinding:
    prefix: --locus_numbering_start
- id: in_no_progress
  doc: Hide conversion progress counter.
  type: boolean
  inputBinding:
    prefix: --no_progress
- id: in_no_wrap_qualifier
  doc: "By default there is a line wrapping at 80 characters.\nThe cut is at the world\
    \ level. Activating this option\nwill avoid the line-wrapping for the qualifiers."
  type: boolean
  inputBinding:
    prefix: --no_wrap_qualifier
- id: in_shame
  doc: Suppress the shameless plug.
  type: boolean
  inputBinding:
    prefix: --shame
- id: in_translate
  doc: Include translation in CDS features.
  type: boolean
  inputBinding:
    prefix: --translate
- id: in_use_attribute_value_as_locus_tag
  doc: Use the value of the defined attribute as locus_tag.
  type: string
  inputBinding:
    prefix: --use_attribute_value_as_locus_tag
- id: in_uncompressed_log
  doc: "Some logs can be compressed for better lisibility,\nthey won't."
  type: boolean
  inputBinding:
    prefix: --uncompressed_log
- id: in_strain
  doc: "Strain from which sequence was obtained. May be needed\nwhen organism belongs\
    \ to Bacteria."
  type: string
  inputBinding:
    prefix: --strain
- id: in_environmental_sample
  doc: "Bolean. Identifies sequences derived by direct\nmolecular isolation from a\
    \ bulk environmental DNA\nsample with no reliable identification of the source\n\
    organism. May be needed when organism belongs to\nBacteria."
  type: boolean
  inputBinding:
    prefix: --environmental_sample
- id: in_isolation_source
  doc: "Describes the physical, environmental and/or local\ngeographical source of\
    \ the biological sample from\nwhich the sequence was derived. Mandatory when\n\
    environmental_sample option used."
  type: string
  inputBinding:
    prefix: --isolation_source
- id: in_isolate
  doc: "Individual isolate from which the sequence was\nobtained. May be needed when\
    \ organism belongs to\nBacteria.\n"
  type: string
  inputBinding:
    prefix: --isolate
- id: in_gff_file
  doc: Input gff-file.
  type: string
  inputBinding:
    position: 0
- id: in_fast_a
  doc: Input fasta sequence.
  type: string
  inputBinding:
    position: 1
- id: in_features_dot
  doc: --keep_duplicates     Do not remove duplicate features during the process.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Output filename.
  type: File
  outputBinding:
    glob: $(inputs.in_output)
- id: out_gzip
  doc: Gzip output file.
  type: File
  outputBinding:
    glob: $(inputs.in_gzip)
cwlVersion: v1.1
baseCommand:
- EMBLmyGFF3
