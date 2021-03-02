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
    File? trf_prgm
    String? default_search_engine
    File? rmb_last_dir
    File? abb_last_dir
    File? crossmatch_dir
    File? libdir
    File? hmmer_dir
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
      ~{if (no_low_simple) then "-noLowSimple" else ""} \
      ~{if defined(trf_prgm) then ("-trf_prgm " +  '"' + trf_prgm + '"') else ""} \
      ~{if defined(default_search_engine) then ("-default_search_engine " +  '"' + default_search_engine + '"') else ""} \
      ~{if defined(rmb_last_dir) then ("-rmblast_dir " +  '"' + rmb_last_dir + '"') else ""} \
      ~{if defined(abb_last_dir) then ("-abblast_dir " +  '"' + abb_last_dir + '"') else ""} \
      ~{if defined(crossmatch_dir) then ("-crossmatch_dir " +  '"' + crossmatch_dir + '"') else ""} \
      ~{if defined(libdir) then ("-libdir " +  '"' + libdir + '"') else ""} \
      ~{if defined(hmmer_dir) then ("-hmmer_dir " +  '"' + hmmer_dir + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/repeatmasker:4.1.1--pl526_1"
  }
  parameter_meta {
    engine: "|abblast|wublast\\nUse the provided search engine to run the blastx runs."
    p_value: "#\\nThe threshold for accepting matches. Matches must hava a pvalue less\\nthan this number. Default is *NOT* to threshold."
    min_score: "#\\nThreshold on minscore. Note no default is added. So all hits will be\\nreturned unless a minscore is used."
    word_size: "#\\nThe wordsize to use with the blastx search. Default is 3"
    query_stat_len: "#\\nThe effective length of the query to use in statistical\\ncalculations."
    max_aa_dist: "#\\nThe maximum distance to consider two blastx hits as the same (and\\nthus contributing to Sum P scores). Default is 333."
    no_low_simple: "Turns off masking/annotating of low complexity and simple repeats in\\nthe final output. Low complexity and simple repeat analysis will\\nstill occur prior to looking for matches to the RepeatPep database."
    trf_prgm: "The full path including the name for the TRF program."
    default_search_engine: "The default search engine to use"
    rmb_last_dir: "The path to the installation of the RMBLAST sequence alignment\\nprogram."
    abb_last_dir: "The path to the installation of the ABBLAST sequence alignment\\nprogram."
    crossmatch_dir: "The path Phil Green's cross_match program ( phrap program suite )."
    libdir: "Path to the RepeatMasker libraries directory."
    hmmer_dir: "The path to the HMMER profile HMM search software."
    repeat_modeler: "COPYRIGHT"
  }
  output {
    File out_stdout = stdout()
  }
}