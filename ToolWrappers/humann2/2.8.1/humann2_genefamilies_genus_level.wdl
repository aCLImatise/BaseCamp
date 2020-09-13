version 1.0

task Humann2GenefamiliesGenusLevel {
  input {
    String? gene_families_input
    String? the_output_table
  }
  command <<<
    humann2_genefamilies_genus_level \
      ~{if defined(gene_families_input) then ("--input " +  '"' + gene_families_input + '"') else ""} \
      ~{if defined(the_output_table) then ("--output " +  '"' + the_output_table + '"') else ""}
  >>>
  parameter_meta {
    gene_families_input: "the gene families input table"
    the_output_table: "the output table\\n"
  }
  output {
    File out_stdout = stdout()
  }
}