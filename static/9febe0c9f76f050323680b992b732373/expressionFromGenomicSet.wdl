version 1.0

task ExpressionFromGenomicSet.py {
  input {
    String? dist
    String experimental_matrix_file
    String gene_expression_file
    String annotation_path
    String output_dir
  }
  command <<<
    expressionFromGenomicSet.py \
      ~{experimental_matrix_file} \
      ~{gene_expression_file} \
      ~{annotation_path} \
      ~{output_dir} \
      ~{if defined(dist) then ("--dist " +  '"' + dist + '"') else ""}
  >>>
  parameter_meta {
    dist: "threshDist of GenomicReginSet.filter_by_gene_association_old. [default: 50000]"
    experimental_matrix_file: ""
    gene_expression_file: ""
    annotation_path: ""
    output_dir: ""
  }
}