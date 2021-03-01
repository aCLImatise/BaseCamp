version 1.0

task Monocle3Create {
  input {
    Int? output_object_format
    Boolean? introspective
    String? expression_matrix
    String? cell_metadata
    String? gene_annotation
    Boolean? verbose
    String output_object
  }
  command <<<
    monocle3 create \
      ~{output_object} \
      ~{if defined(output_object_format) then ("--output-object-format " +  '"' + output_object_format + '"') else ""} \
      ~{if (introspective) then "--introspective" else ""} \
      ~{if defined(expression_matrix) then ("--expression-matrix " +  '"' + expression_matrix + '"') else ""} \
      ~{if defined(cell_metadata) then ("--cell-metadata " +  '"' + cell_metadata + '"') else ""} \
      ~{if defined(gene_annotation) then ("--gene-annotation " +  '"' + gene_annotation + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    output_object_format: "Format of output object. [Default: cds3]"
    introspective: "Print introspective information of the output object."
    expression_matrix: "Expression matrix, genes as rows, cells as columns. Required input.  Provide as TSV, CSV, RDS or MTX. In the case of MTX, requires both --cell-metadata and --gene-annotation."
    cell_metadata: "Per-cell annotation, optional unless expression as MTX. Row names must match the column names of the expression matrix. Provide as TSV, CSV or RDS."
    gene_annotation: "Per-gene annotation, optional unless expression as MTX. Row names must match the row names of the expression matrix. Provide as TSV, CSV or RDS."
    verbose: "Emit verbose output."
    output_object: ""
  }
  output {
    File out_stdout = stdout()
  }
}