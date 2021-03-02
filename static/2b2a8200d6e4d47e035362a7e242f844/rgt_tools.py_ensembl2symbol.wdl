version 1.0

task RgttoolspyEnsembl2symbol {
  input {
    String? input_gene_list
    String? output_gene_list
    Boolean? organism
  }
  command <<<
    rgt_tools_py ensembl2symbol \
      ~{if defined(input_gene_list) then ("-i " +  '"' + input_gene_list + '"') else ""} \
      ~{if defined(output_gene_list) then ("-o " +  '"' + output_gene_list + '"') else ""} \
      ~{if (organism) then "-organism" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_gene_list: "Input gene list"
    output_gene_list: "Output gene list"
    organism: "Define the organism"
  }
  output {
    File out_stdout = stdout()
  }
}