class: CommandLineTool
id: daa2rma.cwl
inputs:
- id: in_metadata_file
  doc: '[string(s)]     Files containing metadata to be included in RMA6 files.'
  type: boolean?
  inputBinding:
    prefix: --metaDataFile
- id: in_use_compression
  doc: 'Compress reads and matches in RMA file (smaller files, longer to generate.
    Default value: true.'
  type: boolean?
  inputBinding:
    prefix: --useCompression
- id: in_paired_suffix_length
  doc: '[number]   Length of name suffix used to distinguish between name (i.e. first
    word in header) of read and its mate (use 0 if read and mate have same name).
    Default value: 0.'
  type: boolean?
  inputBinding:
    prefix: --pairedSuffixLength
- id: in_paired_reads_in_one_file
  doc: 'Are paired reads in one file (usually they are in two). Default value: false.'
  type: boolean?
  inputBinding:
    prefix: --pairedReadsInOneFile
- id: in_max_matches_per_read
  doc: '[number]     Max matches per read. Default value: 100.'
  type: boolean?
  inputBinding:
    prefix: --maxMatchesPerRead
- id: in_classify
  doc: 'Run classification algorithm. Default value: true.'
  type: boolean?
  inputBinding:
    prefix: --classify
- id: in_min_score
  doc: '[number]             Min score. Default value: 50.0.'
  type: boolean?
  inputBinding:
    prefix: --minScore
- id: in_max_expected
  doc: '[number]          Max expected. Default value: 0.01.'
  type: boolean?
  inputBinding:
    prefix: --maxExpected
- id: in_min_percent_identity
  doc: '[number]   Min percent identity. Default value: 0.0.'
  type: boolean?
  inputBinding:
    prefix: --minPercentIdentity
- id: in_top_percent
  doc: '[number]          Top percent. Default value: 10.0.'
  type: boolean?
  inputBinding:
    prefix: --topPercent
- id: in_min_support_percent
  doc: '[number]   Min support as percent of assigned reads (0==off). Default value:
    0.05.'
  type: boolean?
  inputBinding:
    prefix: --minSupportPercent
- id: in_min_support
  doc: '[number]          Min support (0==off). Default value: 0.'
  type: boolean?
  inputBinding:
    prefix: --minSupport
- id: in_min_percent_read_cover
  doc: '[number]   Min percent of read length to be covered by alignments. Default
    value: 0.0.'
  type: boolean?
  inputBinding:
    prefix: --minPercentReadCover
- id: in_min_percent_reference_cover
  doc: '[number]   Min percent of reference length to be covered by alignments. Default
    value: 0.0.'
  type: boolean?
  inputBinding:
    prefix: --minPercentReferenceCover
- id: in_lca_algorithm
  doc: '[string]        Set the LCA algorithm to use for taxonomic assignment. Default
    value: naive. Legal values: naive, weighted, longReads'
  type: boolean?
  inputBinding:
    prefix: --lcaAlgorithm
- id: in_lca_coverage_percent
  doc: '[number]   Set the percent for the LCA to cover. Default value: 100.0.'
  type: boolean?
  inputBinding:
    prefix: --lcaCoveragePercent
- id: in_read_assignment_mode
  doc: '[string]   Set the read assignment mode. Default value: readCount. Legal values:
    readCount, readLength, alignedBases, readMagnitude'
  type: boolean?
  inputBinding:
    prefix: --readAssignmentMode
- id: in_con_file
  doc: '[string]              File of contaminant taxa (one Id or name per line).'
  type: boolean?
  inputBinding:
    prefix: --conFile
- id: in_parse_tax_on_names
  doc: 'Parse taxon names. Default value: true.'
  type: boolean?
  inputBinding:
    prefix: --parseTaxonNames
- id: in_gi_two_tax_a
  doc: '[string]             GI-to-Taxonomy mapping file.'
  type: boolean?
  inputBinding:
    prefix: --gi2taxa
- id: in_acc_two_tax_a
  doc: '[string]            Accessopm-to-Taxonomy mapping file.'
  type: boolean?
  inputBinding:
    prefix: --acc2taxa
- id: in_syn_two_tax_a
  doc: '[string]            Synonyms-to-Taxonomy mapping file.'
  type: boolean?
  inputBinding:
    prefix: --syn2taxa
- id: in_gi_two_eggnog
  doc: '[string]      GI-to-EGGNOG mapping file.'
  type: boolean?
  inputBinding:
    prefix: --gi2eggnog
- id: in_acc_two_eggnog
  doc: '[string]     Accession-to-EGGNOG mapping file.'
  type: boolean?
  inputBinding:
    prefix: --acc2eggnog
- id: in_syn_two_eggnog
  doc: '[string]     Synonyms-to-EGGNOG mapping file.'
  type: boolean?
  inputBinding:
    prefix: --syn2eggnog
- id: in_tags_four_eggnog
  doc: '[string]    Tags for EGGNOG id parsing (must set to activate id parsing).'
  type: boolean?
  inputBinding:
    prefix: --tags4eggnog
- id: in_gi_two_interpro_two_go
  doc: '[string]   GI-to-INTERPRO2GO mapping file.'
  type: boolean?
  inputBinding:
    prefix: --gi2interpro2go
- id: in_acc_two_interpro_two_go
  doc: '[string]   Accession-to-INTERPRO2GO mapping file.'
  type: boolean?
  inputBinding:
    prefix: --acc2interpro2go
- id: in_syn_two_interpro_two_go
  doc: '[string]   Synonyms-to-INTERPRO2GO mapping file.'
  type: boolean?
  inputBinding:
    prefix: --syn2interpro2go
- id: in_tags_four_interpro_two_go
  doc: '[string]   Tags for INTERPRO2GO id parsing (must set to activate id parsing).'
  type: boolean?
  inputBinding:
    prefix: --tags4interpro2go
- id: in_gi_two_kegg
  doc: '[string]          GI-to-KEGG mapping file.'
  type: boolean?
  inputBinding:
    prefix: --gi2kegg
- id: in_acc_two_kegg
  doc: '[string]         Accession-to-KEGG mapping file.'
  type: boolean?
  inputBinding:
    prefix: --acc2kegg
- id: in_syn_two_kegg
  doc: '[string]         Synonyms-to-KEGG mapping file.'
  type: boolean?
  inputBinding:
    prefix: --syn2kegg
- id: in_tags_four_kegg
  doc: '[string]        Tags for KEGG id parsing (must set to activate id parsing).'
  type: boolean?
  inputBinding:
    prefix: --tags4kegg
- id: in_gi_two_seed
  doc: '[string]          GI-to-SEED mapping file.'
  type: boolean?
  inputBinding:
    prefix: --gi2seed
- id: in_acc_two_seed
  doc: '[string]         Accession-to-SEED mapping file.'
  type: boolean?
  inputBinding:
    prefix: --acc2seed
- id: in_syn_two_seed
  doc: '[string]         Synonyms-to-SEED mapping file.'
  type: boolean?
  inputBinding:
    prefix: --syn2seed
- id: in_tags_four_seed
  doc: '[string]        Tags for SEED id parsing (must set to activate id parsing).'
  type: boolean?
  inputBinding:
    prefix: --tags4seed
- id: in_first_word_is_accession
  doc: "First word in reference header is accession number (set to 'true' for NCBI-nr\
    \ downloaded Sep 2016 or later). Default value: true."
  type: boolean?
  inputBinding:
    prefix: --firstWordIsAccession
- id: in_accession_tags
  doc: '[string(s)]   List of accession tags. Default value(s): gb| ref|.'
  type: boolean?
  inputBinding:
    prefix: --accessionTags
- id: in_verbose
  doc: 'Echo commandline options and be verbose. Default value: false.'
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_input
  doc: -i, --in [string(s)]                 Input DAA file. Mandatory option.
  type: string
  inputBinding:
    position: 0
- id: in_output
  doc: -o, --out [string(s)]                Output file(s), one for each input file,
    or a directory. Mandatory option.
  type: string
  inputBinding:
    position: 1
- id: in_reads
  doc: '-p, --paired                         Reads are paired. Default value: false.'
  type: string
  inputBinding:
    position: 2
- id: in_parameters
  doc: '-lg, --longReads                     Parse and analyse as long reads. Default
    value: false.'
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- daa2rma
