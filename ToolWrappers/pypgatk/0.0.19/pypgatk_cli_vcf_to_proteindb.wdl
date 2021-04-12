version 1.0

task PypgatkCliVcftoproteindb {
  input {
    String? config_file
    File? input_fast_a
    File? vcf
    File? gene_annotations_gtf
    Int? translation_table
    String? var_prefix
    Boolean? report_ref_seq
    File? annotation_field_name
    String? af_field
    Float? af_threshold
    Int? consequence_index
    String? exclude_consequences
    Boolean? skip_including_all_cds
    String? include_consequences
    Boolean? ignore_filters
    String? accepted_filters
    String peps
    String variants
  }
  command <<<
    pypgatk_cli vcf_to_proteindb \
      ~{peps} \
      ~{variants} \
      ~{if defined(config_file) then ("--config_file " +  '"' + config_file + '"') else ""} \
      ~{if defined(input_fast_a) then ("--input_fasta " +  '"' + input_fast_a + '"') else ""} \
      ~{if defined(vcf) then ("--vcf " +  '"' + vcf + '"') else ""} \
      ~{if defined(gene_annotations_gtf) then ("--gene_annotations_gtf " +  '"' + gene_annotations_gtf + '"') else ""} \
      ~{if defined(translation_table) then ("--translation_table " +  '"' + translation_table + '"') else ""} \
      ~{if defined(var_prefix) then ("--var_prefix " +  '"' + var_prefix + '"') else ""} \
      ~{if (report_ref_seq) then "--report_ref_seq" else ""} \
      ~{if defined(annotation_field_name) then ("--annotation_field_name " +  '"' + annotation_field_name + '"') else ""} \
      ~{if defined(af_field) then ("--af_field " +  '"' + af_field + '"') else ""} \
      ~{if defined(af_threshold) then ("--af_threshold " +  '"' + af_threshold + '"') else ""} \
      ~{if defined(consequence_index) then ("--consequence_index " +  '"' + consequence_index + '"') else ""} \
      ~{if defined(exclude_consequences) then ("--exclude_consequences " +  '"' + exclude_consequences + '"') else ""} \
      ~{if (skip_including_all_cds) then "--skip_including_all_cds" else ""} \
      ~{if defined(include_consequences) then ("--include_consequences " +  '"' + include_consequences + '"') else ""} \
      ~{if (ignore_filters) then "--ignore_filters" else ""} \
      ~{if defined(accepted_filters) then ("--accepted_filters " +  '"' + accepted_filters + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/pypgatk:0.0.19--py_0"
  }
  parameter_meta {
    config_file: "Configuration to perform conversion between\\nENSEMBL Files"
    input_fast_a: "Path to the transcript sequence"
    vcf: "Path to the VCF file"
    gene_annotations_gtf: "Path to the gene annotations file"
    translation_table: "Translation table (Default 1)"
    var_prefix: "String to add before the variant peptides"
    report_ref_seq: "In addition to var peps, also report all ref"
    annotation_field_name: "Annotation field name found in the INFO\\ncolumn, e.g CSQ or vep; if empty it will\\nidentify overlapping transcripts from the\\ngiven GTF file and no aa consequence will be\\nconsidered"
    af_field: "field name in the VCF INFO column to use for\\nfiltering on AF, (Default None)"
    af_threshold: "Minium AF threshold for considering common"
    consequence_index: "Index of consequence in the annotated\\ncolumns (separated by |)"
    exclude_consequences: "Excluded Consequences  [default:\\ndownstream_gene_variant,\\nupstream_gene_variant, intergenic_variant,\\nintron_variant, synonymous_variant]"
    skip_including_all_cds: "by default any transcript that has a defined\\nCDS will be used, this option disables this\\nfeatures instead"
    include_consequences: "included_consequences, default all"
    ignore_filters: "enabling this option causes or variants to\\nbe parsed. By default only variants that\\nhave not failed any filters will be\\nprocessed (FILTER column is PASS, None, .)\\nor if the filters are subset of the accepted\\nfilters. (default is False)"
    accepted_filters: "Accepted filters for variant parsing"
    peps: "-o, --output_proteindb TEXT     Output file name, exits if already exists"
    variants: "--transcript_index INTEGER      Index of transcript ID in the annotated"
  }
  output {
    File out_stdout = stdout()
  }
}