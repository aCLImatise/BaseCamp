version 1.0

task Collectcolumns {
  input {
    Int? feature_column
    Int? value_column
    String? separator
    Boolean? names_corresponding_order
    Boolean? header
    Array[String] additional_attributes
    File? gtf
    String? feature_attribute
    String path_output_written
    String table
    String false_dot
  }
  command <<<
    collect_columns \
      ~{path_output_written} \
      ~{table} \
      ~{false_dot} \
      ~{if defined(feature_column) then ("--feature-column " +  '"' + feature_column + '"') else ""} \
      ~{if defined(value_column) then ("--value-column " +  '"' + value_column + '"') else ""} \
      ~{if defined(separator) then ("--separator " +  '"' + separator + '"') else ""} \
      ~{if (names_corresponding_order) then "-n" else ""} \
      ~{if (header) then "--header" else ""} \
      ~{if defined(additional_attributes) then ("--additional-attributes " +  '"' + additional_attributes + '"') else ""} \
      ~{if defined(gtf) then ("--gtf " +  '"' + gtf + '"') else ""} \
      ~{if defined(feature_attribute) then ("--feature-attribute " +  '"' + feature_attribute + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/collect-columns:1.0.0--py_0"
  }
  parameter_meta {
    feature_column: "The position of the column with the (unique) feature\\nids. Default to 0."
    value_column: "The position of the column with the values of\\ninterest. Defaults to 1."
    separator: "The separator used in the tables. This will also be\\nused in the output table. Defaults to a tab."
    names_corresponding_order: "[NAME [NAME ...]], --names [NAME [NAME ...]]\\nThe names of the samples corresponding to the tables\\n(in the same order as the tables). These will be used\\nas headers in the merged table. If not specified the\\nbasenames of tables will be used."
    header: "Whether or not the tables have a header. Defaults to"
    additional_attributes: "A list of attributes which will be added to the merged\\ntable. These attributes will be retrieved from the GTF\\nor GFF file specified with the -g option. Multiple\\nvalues will be separator by a ';'. Requires -g to be\\nspecified."
    gtf: "The GTF or GFF file from which the additional\\nattributes (see -a) will be retrieved. Ignored if -a\\nis not specified. Required if -a is specified."
    feature_attribute: "The attribute from the GTF/GFF used for matching the\\nfeature records with the rows in the table. Ignored if\\n-a is not specified. Defaults to 'gene_id'.\\n"
    path_output_written: "The path the output will be written to."
    table: "The tables to be merged."
    false_dot: "-S, --sum-on-duplicate-id"
  }
  output {
    File out_stdout = stdout()
  }
}