version 1.0

task ComparemHclust {
  input {
    String? method
    Boolean? similarity
    Int? max_sim_value
    String? name_col_one
    String? name_col_two
    String? value_col
    Boolean? silent
    String pairwise_value_file
    String output_tree
  }
  command <<<
    comparem hclust \
      ~{pairwise_value_file} \
      ~{output_tree} \
      ~{if defined(method) then ("--method " +  '"' + method + '"') else ""} \
      ~{true="--similarity" false="" similarity} \
      ~{if defined(max_sim_value) then ("--max_sim_value " +  '"' + max_sim_value + '"') else ""} \
      ~{if defined(name_col_one) then ("--name_col1 " +  '"' + name_col_one + '"') else ""} \
      ~{if defined(name_col_two) then ("--name_col2 " +  '"' + name_col_two + '"') else ""} \
      ~{if defined(value_col) then ("--value_col " +  '"' + value_col + '"') else ""} \
      ~{true="--silent" false="" silent}
  >>>
  parameter_meta {
    method: "clustering method to use. (default: average)"
    similarity: "indicates file contain similarity values"
    max_sim_value: "maximum similarity value (default: 100)"
    name_col_one: "index of first column with genome names (default: 0)"
    name_col_two: "index of second column with genome names (default: 1)"
    value_col: "index of column with similarity or dissimilarity values (default: 2)"
    silent: "suppress output"
    pairwise_value_file: "file with pairwise similarity or dissimilarity values between genomes"
    output_tree: "name for output hierarchical cluster tree"
  }
}