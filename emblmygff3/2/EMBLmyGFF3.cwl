class: CommandLineTool
id: ../../../EMBLmyGFF3.cwl
inputs:
- id: accession
  doc: 'Bolean. Accession number(s) for the entry. Default value: XXX. The proper
    value is automatically filled up by ENA during the submission by a unique accession
    number they will assign. The accession number is used to set up the AC line and
    the first token of the ID line as well. Please visit [this page](https://www.ebi.ac.uk/ena/submit/accession-
    number-formats) and [this one](https://www.ebi.ac.uk/ena/submit/sequence- submission)
    to learn more about it. Activating the option will set the Accession number with
    the fasta sequence identifier.'
  type: boolean
  inputBinding:
    prefix: --accession
- id: created
  doc: Creation time of the original entry. The default value is the date of the day.
  type: string
  inputBinding:
    prefix: --created
- id: data_class
  doc: Data class of the sample. Default value 'XXX'. This option is used to set up
    the 5th token of the ID line.
  type: string
  inputBinding:
    prefix: --data_class
- id: organelle
  doc: Sample organelle. No default value.
  type: string
  inputBinding:
    prefix: --organelle
- id: locus_tag
  doc: Locus tag prefix used to set up the prefix of the locus_tag qualifier. The
    locus tag has to be registered at ENA prior any submission. More information [here](https://www.ebi.ac.uk/ena/submit/locus-tags).
  type: string
  inputBinding:
    prefix: --locus_tag
- id: keyword
  doc: Keywords for the entry. No default value.
  type: string[]
  inputBinding:
    prefix: --keyword
- id: classification
  doc: Organism classification e.g 'Eukaryota; Opisthokonta; Metazoa'. The default
    value is the classification found in the NCBI taxonomy DB from the species/taxid
    given as --species parameter. If none is found, 'Life' will be the default value.
  type: string
  inputBinding:
    prefix: --classification
- id: molecule_type
  doc: Molecule type of the sample. No default value.
  type: string
  inputBinding:
    prefix: --molecule_type
- id: output
  doc: Output filename.
  type: string
  inputBinding:
    prefix: --output
- id: project_id
  doc: Project ID. Default is 'XXX' (This is used to set up the PR line).
  type: string
  inputBinding:
    prefix: --project_id
- id: quiet
  doc: Decrease verbosity.
  type: boolean
  inputBinding:
    prefix: --quiet
- id: transl_table
  doc: 'Translation table. No default. (This is used to set up the translation table
    qualifier transl_table of the CDS features.) Please visit [NCBI genetic code](https:
    //www.ncbi.nlm.nih.gov/Taxonomy/Utils/wprintgc.cgi) for more information.'
  type: string
  inputBinding:
    prefix: --transl_table
- id: species
  doc: Sample species, formatted as 'Genus species' or taxid. No default. (This is
    used to set up the OS line.)
  type: string
  inputBinding:
    prefix: --species
- id: topology
  doc: Sequence topology. No default. (This is used to set up the Topology that is
    the 3rd token of the ID line.)
  type: string
  inputBinding:
    prefix: --topology
- id: verbose
  doc: Increase verbosity.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: taxonomy
  doc: Source taxonomy. Default value 'XXX'. This option is used to set the taxonomic
    division within ID line (6th token).
  type: string
  inputBinding:
    prefix: --taxonomy
- id: gzip
  doc: Gzip output file.
  type: boolean
  inputBinding:
    prefix: --gzip
- id: advanced_help
  doc: Display advanced information of the parameter specified or of all parameters
    if none specified.
  type: string
  inputBinding:
    prefix: --advanced_help
- id: de
  doc: Description. Default value 'XXX'.
  type: string
  inputBinding:
    prefix: --de
- id: author
  doc: Author for the reference. No default value.
  type: string[]
  inputBinding:
    prefix: --author
- id: rc
  doc: Reference Comment. No default value.
  type: string
  inputBinding:
    prefix: --rc
- id: rg
  doc: Reference Group, the working groups/consortia that produced the record. Default
    value 'XXX'.
  type: string
  inputBinding:
    prefix: --rg
- id: rl
  doc: Reference publishing location. No default value.
  type: string
  inputBinding:
    prefix: --rl
- id: rt
  doc: Reference Title. No default value.
  type: string
  inputBinding:
    prefix: --rt
- id: rx
  doc: Reference cross-reference. No default value
  type: string
  inputBinding:
    prefix: --rx
- id: email
  doc: Email used to fetch information from NCBI taxonomy database. Default value
    'EMBLmyGFF3@tool.org'.
  type: string
  inputBinding:
    prefix: --email
- id: expose_translations
  doc: Copy feature and attribute mapping files to the working directory. They will
    be used as mapping files instead of the default internal JSON files. You may modify
    them as it suits you.
  type: boolean
  inputBinding:
    prefix: --expose_translations
- id: force_unknown_features
  doc: Force to keep feature types not accepted by EMBL. /!\ Option not suitable for
    submission purpose.
  type: boolean
  inputBinding:
    prefix: --force_unknown_features
- id: force_un_complete_features
  doc: Force to keep features whithout all the mandatory qualifiers. /!\ Option not
    suitable for submission purpose.
  type: boolean
  inputBinding:
    prefix: --force_uncomplete_features
- id: interleave_genes
  doc: Print gene features with interleaved mRNA and CDS features.
  type: boolean
  inputBinding:
    prefix: --interleave_genes
- id: keep_duplicates
  doc: Do not remove duplicate features during the process. /!\ Option not suitable
    for submission purpose.
  type: boolean
  inputBinding:
    prefix: --keep_duplicates
- id: locus_numbering_start
  doc: Start locus numbering with the provided value.
  type: string
  inputBinding:
    prefix: --locus_numbering_start
- id: no_progress
  doc: Hide conversion progress counter.
  type: boolean
  inputBinding:
    prefix: --no_progress
- id: no_wrap_qualifier
  doc: By default there is a line wrapping at 80 characters. The cut is at the world
    level. Activating this option will avoid the line-wrapping for the qualifiers.
  type: boolean
  inputBinding:
    prefix: --no_wrap_qualifier
- id: shame
  doc: Suppress the shameless plug.
  type: boolean
  inputBinding:
    prefix: --shame
- id: translate
  doc: Include translation in CDS features.
  type: boolean
  inputBinding:
    prefix: --translate
- id: use_attribute_value_as_locus_tag
  doc: Use the value of the defined attribute as locus_tag.
  type: string
  inputBinding:
    prefix: --use_attribute_value_as_locus_tag
- id: uncompressed_log
  doc: Some logs can be compressed for better lisibility, they won't.
  type: boolean
  inputBinding:
    prefix: --uncompressed_log
- id: strain
  doc: Strain from which sequence was obtained. May be needed when organism belongs
    to Bacteria.
  type: string
  inputBinding:
    prefix: --strain
- id: environmental_sample
  doc: Bolean. Identifies sequences derived by direct molecular isolation from a bulk
    environmental DNA sample with no reliable identification of the source organism.
    May be needed when organism belongs to Bacteria.
  type: boolean
  inputBinding:
    prefix: --environmental_sample
- id: isolation_source
  doc: Describes the physical, environmental and/or local geographical source of the
    biological sample from which the sequence was derived. Mandatory when environmental_sample
    option used.
  type: string
  inputBinding:
    prefix: --isolation_source
- id: isolate
  doc: Individual isolate from which the sequence was obtained. May be needed when
    organism belongs to Bacteria.
  type: string
  inputBinding:
    prefix: --isolate
- id: gff_file
  doc: Input gff-file.
  type: string
  inputBinding:
    position: 0
- id: fast_a
  doc: Input fasta sequence.
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- EMBLmyGFF3
