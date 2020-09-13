version 1.0

task ExpressionFromGenomicSetpy {
  input {
    Int? dist
    File experimental_matrix_file
    File gene_expression_file
    File annotation_path
    String output_dir
  }
  command <<<
    expressionFromGenomicSet_py \
      ~{experimental_matrix_file} \
      ~{gene_expression_file} \
      ~{annotation_path} \
      ~{output_dir} \
      ~{if defined(dist) then ("--dist " +  '"' + dist + '"') else ""}
  >>>
  parameter_meta {
    dist: "threshDist of GenomicReginSet.filter_by_gene_association_old.\\n[default: 50000]\\n"
    experimental_matrix_file: ""
    gene_expression_file: ""
    annotation_path: ""
    output_dir: ""
  }
  output {
    File out_stdout = stdout()
  }
}