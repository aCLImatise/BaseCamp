version 1.0

task PypgatkCli.pyVcfToProteindb {
  input {
    String? config_file
    String? input_fast_a
    String? vep_annotated_vcf
    String? gene_annotations_gtf
    Int? translation_table
    Int? mi_to_translation_table
    String? var_prefix
    Boolean? report_ref_seq
    String? output_protein_db
    String? annotation_field_name
    String? af_field
    Float? af_threshold
    Int? transcript_index
    Int? consequence_index
    String? exclude_biotypes
    String? exclude_consequences
    Boolean? skip_including_all_cds
    String? include_biotypes
    String? include_consequences
    String? biotype_str
    Boolean? ignore_filters
    String? accepted_filters
  }
  command <<<
    pypgatk_cli.py vcf-to-proteindb \
      ~{if defined(config_file) then ("--config_file " +  '"' + config_file + '"') else ""} \
      ~{if defined(input_fast_a) then ("--input_fasta " +  '"' + input_fast_a + '"') else ""} \
      ~{if defined(vep_annotated_vcf) then ("--vep_annotated_vcf " +  '"' + vep_annotated_vcf + '"') else ""} \
      ~{if defined(gene_annotations_gtf) then ("--gene_annotations_gtf " +  '"' + gene_annotations_gtf + '"') else ""} \
      ~{if defined(translation_table) then ("--translation_table " +  '"' + translation_table + '"') else ""} \
      ~{if defined(mi_to_translation_table) then ("--mito_translation_table " +  '"' + mi_to_translation_table + '"') else ""} \
      ~{if defined(var_prefix) then ("--var_prefix " +  '"' + var_prefix + '"') else ""} \
      ~{true="--report_ref_seq" false="" report_ref_seq} \
      ~{if defined(output_protein_db) then ("--output_proteindb " +  '"' + output_protein_db + '"') else ""} \
      ~{if defined(annotation_field_name) then ("--annotation_field_name " +  '"' + annotation_field_name + '"') else ""} \
      ~{if defined(af_field) then ("--af_field " +  '"' + af_field + '"') else ""} \
      ~{if defined(af_threshold) then ("--af_threshold " +  '"' + af_threshold + '"') else ""} \
      ~{if defined(transcript_index) then ("--transcript_index " +  '"' + transcript_index + '"') else ""} \
      ~{if defined(consequence_index) then ("--consequence_index " +  '"' + consequence_index + '"') else ""} \
      ~{if defined(exclude_biotypes) then ("--exclude_biotypes " +  '"' + exclude_biotypes + '"') else ""} \
      ~{if defined(exclude_consequences) then ("--exclude_consequences " +  '"' + exclude_consequences + '"') else ""} \
      ~{true="--skip_including_all_cds" false="" skip_including_all_cds} \
      ~{if defined(include_biotypes) then ("--include_biotypes " +  '"' + include_biotypes + '"') else ""} \
      ~{if defined(include_consequences) then ("--include_consequences " +  '"' + include_consequences + '"') else ""} \
      ~{if defined(biotype_str) then ("--biotype_str " +  '"' + biotype_str + '"') else ""} \
      ~{true="--ignore_filters" false="" ignore_filters} \
      ~{if defined(accepted_filters) then ("--accepted_filters " +  '"' + accepted_filters + '"') else ""}
  >>>
  parameter_meta {
    config_file: "Configuration to perform conversion between ENSEMBL Files"
    input_fast_a: "Path to the transcript sequence"
    vep_annotated_vcf: "Path to the vep annotated VCF file"
    gene_annotations_gtf: "Path to the gene annotations file"
    translation_table: "Translation table (Default 1)"
    mi_to_translation_table: "Mito_trans_table (default 2)"
    var_prefix: "String to add before the variant peptides"
    report_ref_seq: "In addition to var peps, also report all ref peps"
    output_protein_db: "Output file name, exits if already exists"
    annotation_field_name: "Annotation field name found in the INFO column, e.g CSQ or vep"
    af_field: "field name in the VCF INFO column to use for filtering on AF, (Default None)"
    af_threshold: "Minium AF threshold for considering common variants"
    transcript_index: "Index of transcript ID in the annotated columns (separated by |)"
    consequence_index: "Index of consequence in the annotated columns (separated by |)"
    exclude_biotypes: "Excluded Biotypes"
    exclude_consequences: "Excluded Consequences  [default: downstream_gene_variant, upstream_gene_variant, intergenic_variant, intron_variant, synonymous_variant]"
    skip_including_all_cds: "by default any transcript that has a defined CDS will be used, this option disables this features instead it only depends on the biotypes"
    include_biotypes: "Only genes/transcripts (depending on --biotype_str) from these biotypes are considered for trasnaltion, in addition CDS transcripts unless --skip_including_all_cds is given"
    include_consequences: "included_consequences, default all"
    biotype_str: "string used to identify gene/transcript biotype in the gtf file."
    ignore_filters: "enabling this option causes or variants to be parsed. By default only variants that have not failed any filters will be processed (FILTER column is PASS, None, .) or if the filters are subset of the accepted filters. (default is False)"
    accepted_filters: "Accepted filters for variant parsing"
  }
}