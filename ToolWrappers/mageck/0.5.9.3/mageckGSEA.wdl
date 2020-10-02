version 1.0

task MageckGSEA {
  input {
    Boolean? _reversevaluereverse_order
    Boolean? _sortbypsort_pathways
    Int? _scorecolumn_scorecolumnthe
    Int? _permtime_permtimepermutations
    String? _pathwayname_pathwaynamename
    File? _outputfile_outputfilethe
    File? _rankfile_rankfilerequired
    File? _gmtfile_gmtfilerequired
    String? pathway_name
  }
  command <<<
    mageckGSEA \
      ~{pathway_name} \
      ~{if (_reversevaluereverse_order) then "-e" else ""} \
      ~{if (_sortbypsort_pathways) then "-s" else ""} \
      ~{if defined(_scorecolumn_scorecolumnthe) then ("-c " +  '"' + _scorecolumn_scorecolumnthe + '"') else ""} \
      ~{if defined(_permtime_permtimepermutations) then ("-p " +  '"' + _permtime_permtimepermutations + '"') else ""} \
      ~{if defined(_pathwayname_pathwaynamename) then ("-n " +  '"' + _pathwayname_pathwaynamename + '"') else ""} \
      ~{if defined(_outputfile_outputfilethe) then ("-o " +  '"' + _outputfile_outputfilethe + '"') else ""} \
      ~{if defined(_rankfile_rankfilerequired) then ("-r " +  '"' + _rankfile_rankfilerequired + '"') else ""} \
      ~{if defined(_gmtfile_gmtfilerequired) then ("-g " +  '"' + _gmtfile_gmtfilerequired + '"') else ""}
  >>>
  parameter_meta {
    _reversevaluereverse_order: ",  --reverse_value\\nReverse the order of the gene."
    _sortbypsort_pathways: ",  --sort_byp\\nSort the pathways by p value."
    _scorecolumn_scorecolumnthe: ",  --score_column <score_column>\\nThe column for gene scores. If you just want to use the ranking of the\\ngene (located at the 1st column), use 0. The column number starts from\\n0. Default: 0."
    _permtime_permtimepermutations: ",  --perm_time <perm_time>\\nPermutations, default 1000."
    _pathwayname_pathwaynamename: ",  --pathway_name <pathway_name>\\nName of the pathway to be tested. If not found, will test all\\npathways."
    _outputfile_outputfilethe: ",  --output_file <output_file>\\nThe name of the output file. Use - to print to standard output."
    _rankfile_rankfilerequired: ",  --rank_file <rank_file>\\n(required)  Rank file. The first column of the rank file must be the\\ngene name."
    _gmtfile_gmtfilerequired: ",  --gmt_file <gmt_file>\\n(required)  The pathway annotation in GMT format."
    pathway_name: ""
  }
  output {
    File out_stdout = stdout()
    File out__outputfile_outputfilethe = "${in__outputfile_outputfilethe}"
  }
}