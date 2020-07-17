version 1.0

task Fix.py {
  input {
    String? input_list_gene
    String? sorted_output_gene
    String? author
  }
  command <<<
    fix.py \
      ~{if defined(input_list_gene) then ("--input " +  '"' + input_list_gene + '"') else ""} \
      ~{if defined(sorted_output_gene) then ("--output " +  '"' + sorted_output_gene + '"') else ""} \
      ~{if defined(author) then ("--author " +  '"' + author + '"') else ""}
  >>>
  parameter_meta {
    input_list_gene: "The input list of gene pairs."
    sorted_output_gene: "The sorted output of gene pairs."
    author: "Daniel Nicorici, E-mail: Daniel.Nicorici@gmail.com"
  }
}