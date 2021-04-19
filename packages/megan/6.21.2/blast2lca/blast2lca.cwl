class: CommandLineTool
id: blast2lca.cwl
inputs:
- id: in_format
  doc: '[string]                BLAST format. Default value: Unknown Legal values:
    Unknown, DAA, BlastText, BlastXML, BlastTab, LastMAF, RapSearch2Aln, IlluminaReporter,
    RDPAssignmentDetails, RDPStandalone, Mothur, SAM, References_as_FastA'
  type: boolean?
  inputBinding:
    prefix: --format
- id: in_mode
  doc: '[string]                  BLAST mode. Default value: Unknown Legal values:
    Unknown, BlastN, BlastP, BlastX, Classifier'
  type: boolean?
  inputBinding:
    prefix: --mode
- id: in_kegg_output
  doc: '[string]           KEGG output file. Default value: foo-kegg.txt'
  type: File?
  inputBinding:
    prefix: --keggOutput
- id: in_kegg
  doc: 'Map reads to KEGG KOs?. Default value: false.'
  type: boolean?
  inputBinding:
    prefix: --kegg
- id: in_show_ranks
  doc: 'Show taxonomic ranks. Default value: true.'
  type: boolean?
  inputBinding:
    prefix: --showRanks
- id: in_official_ranks_only
  doc: 'Report only taxa that have an official rank. Default value: true.'
  type: boolean?
  inputBinding:
    prefix: --officialRanksOnly
- id: in_show_tax_ids
  doc: 'Report taxon ids rather than taxon names. Default value: false.'
  type: boolean?
  inputBinding:
    prefix: --showTaxIds
- id: in_max_expected
  doc: '[number]          Max expected. Default value: 0.01.'
  type: boolean?
  inputBinding:
    prefix: --maxExpected
- id: in_top_percent
  doc: '[number]          Top percent. Default value: 10.0.'
  type: boolean?
  inputBinding:
    prefix: --topPercent
- id: in_min_percent_identity
  doc: '[number]   Min percent identity. Default value: 0.0.'
  type: boolean?
  inputBinding:
    prefix: --minPercentIdentity
- id: in_max_kegg_per_read
  doc: '[number]       Maximum number of KEGG assignments to report for a read. Default
    value: 4.'
  type: boolean?
  inputBinding:
    prefix: --maxKeggPerRead
- id: in_parse_tax_on_names
  doc: 'Parse taxon names. Default value: true.'
  type: boolean?
  inputBinding:
    prefix: --parseTaxonNames
- id: in_map_db
  doc: '[string]               MEGAN mapping db (file megan-map.db).'
  type: boolean?
  inputBinding:
    prefix: --mapDB
- id: in_acc_two_tax_a
  doc: '[string]            Accession-to-Taxonomy mapping file.'
  type: boolean?
  inputBinding:
    prefix: --acc2taxa
- id: in_syn_two_tax_a
  doc: '[string]            Synonyms-to-Taxonomy mapping file.'
  type: boolean?
  inputBinding:
    prefix: --syn2taxa
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
- id: in_first_word_is_accession
  doc: "First word in reference header is accession number (set to 'true' for NCBI-nr\
    \ downloaded Sep 2016 or later). Default value: true."
  type: boolean?
  inputBinding:
    prefix: --firstWordIsAccession
- id: in_accession_tags
  doc: "[string(s)]   List of accession tags. Default value(s): 'gb|' 'ref|'."
  type: boolean?
  inputBinding:
    prefix: --accessionTags
- id: in_verbose
  doc: 'Echo commandline options and be verbose. Default value: false.'
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_input
  doc: -i, --input [string]                 Input BLAST file. Mandatory option.
  type: string
  inputBinding:
    position: 0
- id: in_output
  doc: '-o, --output [string]                Taxonomy output file. Default value:
    foo-taxonomy.txt'
  type: string
  inputBinding:
    position: 1
- id: in_parameters
  doc: '-ms, --minScore [number]             Min score. Default value: 50.0.'
  type: string
  inputBinding:
    position: 0
- id: in_true_dot
  doc: 'Classification support:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_kegg_output
  doc: '[string]           KEGG output file. Default value: foo-kegg.txt'
  type: File?
  outputBinding:
    glob: $(inputs.in_kegg_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/megan:6.21.2--h9ee0642_0
cwlVersion: v1.1
baseCommand:
- blast2lca
