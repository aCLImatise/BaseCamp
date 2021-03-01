version 1.0

task MageckGSEA {
  input {
    Boolean? reverse_value
    Boolean? sort_by_p
    Int? score_column
    Int? perm_time
    String? name_pathway_tested
    File? output_file
    File? rank_file
    File? gmt_file
    String? var_8
  }
  command <<<
    mageckGSEA \
      ~{var_8} \
      ~{if (reverse_value) then "--reverse_value" else ""} \
      ~{if (sort_by_p) then "--sort_byp" else ""} \
      ~{if defined(score_column) then ("--score_column " +  '"' + score_column + '"') else ""} \
      ~{if defined(perm_time) then ("--perm_time " +  '"' + perm_time + '"') else ""} \
      ~{if defined(name_pathway_tested) then ("--pathway_name " +  '"' + name_pathway_tested + '"') else ""} \
      ~{if defined(output_file) then ("--output_file " +  '"' + output_file + '"') else ""} \
      ~{if defined(rank_file) then ("--rank_file " +  '"' + rank_file + '"') else ""} \
      ~{if defined(gmt_file) then ("--gmt_file " +  '"' + gmt_file + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    reverse_value: "Reverse the order of the gene."
    sort_by_p: "Sort the pathways by p value."
    score_column: "The column for gene scores. If you just want to use the ranking of the\\ngene (located at the 1st column), use 0. The column number starts from\\n0. Default: 0."
    perm_time: "Permutations, default 1000."
    name_pathway_tested: "Name of the pathway to be tested. If not found, will test all\\npathways."
    output_file: "The name of the output file. Use - to print to standard output."
    rank_file: "(required)  Rank file. The first column of the rank file must be the\\ngene name."
    gmt_file: "(required)  The pathway annotation in GMT format."
    var_8: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}