version 1.0

task RepeatProteinMask {
  input {
    String? engine
    Boolean? p_value
    Boolean? min_score
    Boolean? word_size
    Boolean? query_stat_len
    Boolean? max_aa_dist
    Boolean? no_low_simple
    String repeat_modeler
  }
  command <<<
    RepeatProteinMask \
      ~{repeat_modeler} \
      ~{if defined(engine) then ("-engine " +  '"' + engine + '"') else ""} \
      ~{if (p_value) then "-pvalue" else ""} \
      ~{if (min_score) then "-minscore" else ""} \
      ~{if (word_size) then "-wordsize" else ""} \
      ~{if (query_stat_len) then "-querystatlen" else ""} \
      ~{if (max_aa_dist) then "-maxaadist" else ""} \
      ~{if (no_low_simple) then "-noLowSimple" else ""}
  >>>
  parameter_meta {
    engine: "|abblast|wublast\\nUse the provided search engine to run the blastx runs."
    p_value: "#\\nThe threshold for accepting matches. Matches must hava a pvalue less\\nthan this number. Default is *NOT* to threshold."
    min_score: "#\\nThreshold on minscore. Note no default is added. So all hits will be\\nreturned unless a minscore is used."
    word_size: "#\\nThe wordsize to use with the blastx search. Default is 3"
    query_stat_len: "#\\nThe effective length of the query to use in statistical\\ncalculations."
    max_aa_dist: "#\\nThe maximum distance to consider two blastx hits as the same (and\\nthus contributing to Sum P scores). Default is 333."
    no_low_simple: "Turns off masking/annotating of low complexity and simple repeats in\\nthe final output. Low complexity and simple repeat analysis will\\nstill occur prior to looking for matches to the RepeatPep database.\\nDetailed help"
    repeat_modeler: "COPYRIGHT"
  }
  output {
    File out_stdout = stdout()
  }
}