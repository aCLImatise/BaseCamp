class: CommandLineTool
id: malt_build.cwl
inputs:
- id: in_input
  doc: '[string(s)]              Input reference files in FastA format (or specify
    a single directory). Mandatory option.'
  type: boolean
  inputBinding:
    prefix: --input
- id: in_sequence_type
  doc: '[string]          Sequence type. Mandatory option. Legal values: DNA, Protein'
  type: boolean
  inputBinding:
    prefix: --sequenceType
- id: in_input_gff
  doc: '[string(s)]        Files that provide CDS annotations of DNA input files in
    GFF format (or specify a single directory).'
  type: boolean
  inputBinding:
    prefix: --inputGFF
- id: in_index
  doc: '[string]                 Name of index directory. Mandatory option.'
  type: boolean
  inputBinding:
    prefix: --index
- id: in_threads
  doc: '[number]               Number of worker threads. Default value: 8.'
  type: boolean
  inputBinding:
    prefix: --threads
- id: in_step
  doc: '[number]                 Step size used to advance seed; a value greater than
    1 will reduce index size, but also sensitivity. Default value: 1.'
  type: boolean
  inputBinding:
    prefix: --step
- id: in_shapes
  doc: '[string(s)]            Seed shape(s). Default value(s): default.'
  type: boolean
  inputBinding:
    prefix: --shapes
- id: in_max_hits_per_seed
  doc: '[number]       Maximum number of hits per seed. Default value: 1000.'
  type: boolean
  inputBinding:
    prefix: --maxHitsPerSeed
- id: in_protein_reduct
  doc: '[string]        Name or definition of protein alphabet reduction (BLOSUM50_10,BLOSUM50_11,BLOSUM50_15,BLOSUM50_4,BLOSUM50_8,DIAMOND_11,GBMR4,HSDM17,MALT_10,SDM12,UNREDUCED).
    Default value: DIAMOND_11.'
  type: boolean
  inputBinding:
    prefix: --proteinReduct
- id: in_gi_two_eggnog
  doc: '[string]      GI-to-EGGNOG mapping file (deprecated).'
  type: boolean
  inputBinding:
    prefix: --gi2eggnog
- id: in_acc_two_eggnog
  doc: '[string]     Accession-to-EGGNOG mapping file.'
  type: boolean
  inputBinding:
    prefix: --acc2eggnog
- id: in_syn_two_eggnog
  doc: '[string]     Synonyms-to-EGGNOG mapping file.'
  type: boolean
  inputBinding:
    prefix: --syn2eggnog
- id: in_gi_two_interpro_two_go
  doc: '[string]   GI-to-INTERPRO2GO mapping file (deprecated).'
  type: boolean
  inputBinding:
    prefix: --gi2interpro2go
- id: in_acc_two_interpro_two_go
  doc: '[string]   Accession-to-INTERPRO2GO mapping file.'
  type: boolean
  inputBinding:
    prefix: --acc2interpro2go
- id: in_syn_two_interpro_two_go
  doc: '[string]   Synonyms-to-INTERPRO2GO mapping file.'
  type: boolean
  inputBinding:
    prefix: --syn2interpro2go
- id: in_gi_two_kegg
  doc: '[string]          GI-to-KEGG mapping file (deprecated).'
  type: boolean
  inputBinding:
    prefix: --gi2kegg
- id: in_acc_two_kegg
  doc: '[string]         Accession-to-KEGG mapping file.'
  type: boolean
  inputBinding:
    prefix: --acc2kegg
- id: in_syn_two_kegg
  doc: '[string]         Synonyms-to-KEGG mapping file.'
  type: boolean
  inputBinding:
    prefix: --syn2kegg
- id: in_gi_two_seed
  doc: '[string]          GI-to-SEED mapping file (deprecated).'
  type: boolean
  inputBinding:
    prefix: --gi2seed
- id: in_acc_two_seed
  doc: '[string]         Accession-to-SEED mapping file.'
  type: boolean
  inputBinding:
    prefix: --acc2seed
- id: in_syn_two_seed
  doc: '[string]         Synonyms-to-SEED mapping file.'
  type: boolean
  inputBinding:
    prefix: --syn2seed
- id: in_gi_two_taxonomy
  doc: '[string]   GI-to-Taxonomy mapping file (deprecated).'
  type: boolean
  inputBinding:
    prefix: --gi2taxonomy
- id: in_acc_two_taxonomy
  doc: '[string]   Accession-to-Taxonomy mapping file.'
  type: boolean
  inputBinding:
    prefix: --acc2taxonomy
- id: in_syn_two_taxonomy
  doc: '[string]   Synonyms-to-Taxonomy mapping file.'
  type: boolean
  inputBinding:
    prefix: --syn2taxonomy
- id: in_parse_tax_on_names
  doc: 'Parse taxon names. Default value: true.'
  type: boolean
  inputBinding:
    prefix: --parseTaxonNames
- id: in_no_fun
  doc: 'Turn off functional classifications for provided mapping files (set this when
    using GFF files for DNA references). Default value: false.'
  type: boolean
  inputBinding:
    prefix: --noFun
- id: in_first_word_is_accession
  doc: 'First word in reference header is accession number. Default value: true.'
  type: boolean
  inputBinding:
    prefix: --firstWordIsAccession
- id: in_accession_tags
  doc: '[string(s)]   List of accession tags. Default value(s): gb| ref|.'
  type: boolean
  inputBinding:
    prefix: --accessionTags
- id: in_first_word_only
  doc: 'Save only first word of reference header. Default value: false.'
  type: boolean
  inputBinding:
    prefix: --firstWordOnly
- id: in_random
  doc: '[number]              Random number generator seed. Default value: 666.'
  type: boolean
  inputBinding:
    prefix: --random
- id: in_hash_scale_factor
  doc: '[number]     Hash table scale factor. Default value: 0.9.'
  type: boolean
  inputBinding:
    prefix: --hashScaleFactor
- id: in_verbose
  doc: 'Echo commandline options and be verbose. Default value: false.'
  type: boolean
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- malt-build
