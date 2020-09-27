class: CommandLineTool
id: pypgatk_cli.py_vcf_to_proteindb.cwl
inputs:
- id: in_config_file
  doc: "Configuration to perform conversion between\nENSEMBL Files"
  type: string
  inputBinding:
    prefix: --config_file
- id: in_input_fast_a
  doc: Path to the transcript sequence
  type: File
  inputBinding:
    prefix: --input_fasta
- id: in_vep_annotated_vcf
  doc: Path to the vep annotated VCF file
  type: File
  inputBinding:
    prefix: --vep_annotated_vcf
- id: in_gene_annotations_gtf
  doc: Path to the gene annotations file
  type: File
  inputBinding:
    prefix: --gene_annotations_gtf
- id: in_translation_table
  doc: Translation table (Default 1)
  type: long
  inputBinding:
    prefix: --translation_table
- id: in_mi_to_translation_table
  doc: Mito_trans_table (default 2)
  type: long
  inputBinding:
    prefix: --mito_translation_table
- id: in_var_prefix
  doc: String to add before the variant peptides
  type: string
  inputBinding:
    prefix: --var_prefix
- id: in_report_ref_seq
  doc: In addition to var peps, also report all ref
  type: boolean
  inputBinding:
    prefix: --report_ref_seq
- id: in_annotation_field_name
  doc: "Annotation field name found in the INFO\ncolumn, e.g CSQ or vep"
  type: string
  inputBinding:
    prefix: --annotation_field_name
- id: in_af_field
  doc: "field name in the VCF INFO column to use for\nfiltering on AF, (Default None)"
  type: string
  inputBinding:
    prefix: --af_field
- id: in_af_threshold
  doc: Minium AF threshold for considering common
  type: double
  inputBinding:
    prefix: --af_threshold
- id: in_consequence_index
  doc: "Index of consequence in the annotated\ncolumns (separated by |)"
  type: long
  inputBinding:
    prefix: --consequence_index
- id: in_exclude_biotypes
  doc: Excluded Biotypes
  type: string
  inputBinding:
    prefix: --exclude_biotypes
- id: in_exclude_consequences
  doc: "Excluded Consequences  [default:\ndownstream_gene_variant,\nupstream_gene_variant,\
    \ intergenic_variant,\nintron_variant, synonymous_variant]"
  type: string
  inputBinding:
    prefix: --exclude_consequences
- id: in_skip_including_all_cds
  doc: "by default any transcript that has a defined\nCDS will be used, this option\
    \ disables this\nfeatures instead it only depends on the\nbiotypes"
  type: boolean
  inputBinding:
    prefix: --skip_including_all_cds
- id: in_include_biotypes
  doc: Only genes/transcripts (depending on
  type: string
  inputBinding:
    prefix: --include_biotypes
- id: in_biotype_str
  doc: ) from these biotypes are
  type: boolean
  inputBinding:
    prefix: --biotype_str
- id: in_include_consequences
  doc: included_consequences, default all
  type: string
  inputBinding:
    prefix: --include_consequences
- id: in_ignore_filters
  doc: "enabling this option causes or variants to\nbe parsed. By default only variants\
    \ that\nhave not failed any filters will be\nprocessed (FILTER column is PASS,\
    \ None, .)\nor if the filters are subset of the accepted\nfilters. (default is\
    \ False)"
  type: boolean
  inputBinding:
    prefix: --ignore_filters
- id: in_accepted_filters
  doc: Accepted filters for variant parsing
  type: string
  inputBinding:
    prefix: --accepted_filters
- id: in_peps
  doc: -o, --output_proteindb TEXT     Output file name, exits if already exists
  type: string
  inputBinding:
    position: 0
- id: in_variants
  doc: --transcript_index INTEGER      Index of transcript ID in the annotated
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- pypgatk_cli.py
- vcf-to-proteindb
