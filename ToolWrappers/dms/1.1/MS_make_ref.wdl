version 1.0

task MSmakeref {
  input {
    File? tree_file_newick
    File? taxonomy_annotation_file
    String? reference_name_default
    String value
  }
  command <<<
    MS_make_ref \
      ~{value} \
      ~{if defined(tree_file_newick) then ("-i " +  '"' + tree_file_newick + '"') else ""} \
      ~{if defined(taxonomy_annotation_file) then ("-r " +  '"' + taxonomy_annotation_file + '"') else ""} \
      ~{if defined(reference_name_default) then ("-o " +  '"' + reference_name_default + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/dms:1.1--hc9558a2_0"
  }
  parameter_meta {
    tree_file_newick: "tree file (newick format)"
    taxonomy_annotation_file: "taxonomy annotation file (tabular format)"
    reference_name_default: "reference name, default is \\\"tree.dms\\\""
    value: ""
  }
  output {
    File out_stdout = stdout()
  }
}