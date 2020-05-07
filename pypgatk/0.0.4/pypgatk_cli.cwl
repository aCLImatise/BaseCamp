class: CommandLineTool
id: pypgatk_cli.py_vcf_to_proteindb.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: config_file
  doc: Configuration to perform conversion between ENSEMBL Files
  type: string
  inputBinding:
    prefix: --config_file
- id: input_fast_a
  doc: Path to the transcript sequence
  type: string
  inputBinding:
    prefix: --input_fasta
- id: vep_annotated_vcf
  doc: Path to the vep annotated VCF file
  type: string
  inputBinding:
    prefix: --vep_annotated_vcf
- id: gene_annotations_gtf
  doc: Path to the gene annotations file
  type: string
  inputBinding:
    prefix: --gene_annotations_gtf
- id: translation_table
  doc: Translation table (Default 1)
  type: long
  inputBinding:
    prefix: --translation_table
- id: mi_to_translation_table
  doc: Mito_trans_table (default 2)
  type: long
  inputBinding:
    prefix: --mito_translation_table
- id: var_prefix
  doc: String to add before the variant peptides
  type: string
  inputBinding:
    prefix: --var_prefix
- id: report_ref_seq
  doc: In addition to var peps, also report all ref peps
  type: boolean
  inputBinding:
    prefix: --report_ref_seq
- id: output_protein_db
  doc: Output file name, exits if already exists
  type: string
  inputBinding:
    prefix: --output_proteindb
- id: annotation_field_name
  doc: Annotation field name found in the INFO column, e.g CSQ or vep
  type: string
  inputBinding:
    prefix: --annotation_field_name
- id: af_field
  doc: field name in the VCF INFO column to use for filtering on AF, (Default None)
  type: string
  inputBinding:
    prefix: --af_field
- id: af_threshold
  doc: Minium AF threshold for considering common variants
  type: double
  inputBinding:
    prefix: --af_threshold
- id: transcript_index
  doc: Index of transcript ID in the annotated columns (separated by |)
  type: long
  inputBinding:
    prefix: --transcript_index
- id: consequence_index
  doc: Index of consequence in the annotated columns (separated by |)
  type: long
  inputBinding:
    prefix: --consequence_index
- id: exclude_biotypes
  doc: Excluded Biotypes
  type: string
  inputBinding:
    prefix: --exclude_biotypes
- id: exclude_consequences
  doc: 'Excluded Consequences  [default: downstream_gene_variant, upstream_gene_variant,
    intergenic_variant, intron_variant, synonymous_variant]'
  type: string
  inputBinding:
    prefix: --exclude_consequences
- id: skip_including_all_cds
  doc: by default any transcript that has a defined CDS will be used, this option
    disables this features instead it only depends on the biotypes
  type: boolean
  inputBinding:
    prefix: --skip_including_all_cds
- id: include_biotypes
  doc: Only genes/transcripts (depending on --biotype_str) from these biotypes are
    considered for trasnaltion, in addition CDS transcripts unless --skip_including_all_cds
    is given
  type: string
  inputBinding:
    prefix: --include_biotypes
- id: include_consequences
  doc: included_consequences, default all
  type: string
  inputBinding:
    prefix: --include_consequences
- id: biotype_str
  doc: string used to identify gene/transcript biotype in the gtf file.
  type: string
  inputBinding:
    prefix: --biotype_str
- id: ignore_filters
  doc: enabling this option causes or variants to be parsed. By default only variants
    that have not failed any filters will be processed (FILTER column is PASS, None,
    .) or if the filters are subset of the accepted filters. (default is False)
  type: boolean
  inputBinding:
    prefix: --ignore_filters
- id: accepted_filters
  doc: Accepted filters for variant parsing
  type: string
  inputBinding:
    prefix: --accepted_filters
outputs: []
cwlVersion: v1.1
baseCommand:
- pypgatk_cli.py
- vcf-to-proteindb
