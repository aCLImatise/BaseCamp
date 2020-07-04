version 1.0

task Gomo {
  input {
    String? name_directory_not
    String? oc
    Boolean? text
    String? dag
    String? motifs
    String? motif
    String? shuffle_scores
    String? qvalue_threshold_considered
    String? score_e_thresh
    String? min_gene_count
    Boolean? gs
    String? seed
    Boolean? no_status
    Boolean? verbosity
    String go_term_database
    String scoring_file
  }
  command <<<
    gomo \
      ~{go_term_database} \
      ~{scoring_file} \
      ~{if defined(name_directory_not) then ("--o " +  '"' + name_directory_not + '"') else ""} \
      ~{if defined(oc) then ("--oc " +  '"' + oc + '"') else ""} \
      ~{true="--text" false="" text} \
      ~{if defined(dag) then ("--dag " +  '"' + dag + '"') else ""} \
      ~{if defined(motifs) then ("--motifs " +  '"' + motifs + '"') else ""} \
      ~{if defined(motif) then ("--motif " +  '"' + motif + '"') else ""} \
      ~{if defined(shuffle_scores) then ("--shuffle_scores " +  '"' + shuffle_scores + '"') else ""} \
      ~{if defined(qvalue_threshold_considered) then ("--t " +  '"' + qvalue_threshold_considered + '"') else ""} \
      ~{if defined(score_e_thresh) then ("--score_E_thresh " +  '"' + score_e_thresh + '"') else ""} \
      ~{if defined(min_gene_count) then ("--min_gene_count " +  '"' + min_gene_count + '"') else ""} \
      ~{true="--gs" false="" gs} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{true="--nostatus" false="" no_status} \
      ~{true="--verbosity" false="" verbosity}
  >>>
  parameter_meta {
    name_directory_not: "name of the directory for output. Will not replace an existing directory; default: 'gomo_out'"
    oc: "name of the directory for output. Will replace an existing directory; default: 'gomo_out'"
    text: "output tab separated values format to standard out and don't create output directory or files; default: create HTML and XML in <output dir>;"
    dag: "path to the optional Gene Ontology DAG file to be used for highlighting the specific terms in the GOMo HTML output; default: no highlighting"
    motifs: "path to the optional motif file in MEME format used to generate (all of the) scoring file(s); used for adding sequence logos to HTML output; default: no logos in output;"
    motif: "limit results to specified motif; option may  be repeated; default: use all motifs"
    shuffle_scores: "generate empirical null by shuffling the sequence to score assignments and computing statistics <n> times; default: <n>=1000"
    qvalue_threshold_considered: "the q-value threshold considered significant; default: <q>=0.05, q >= 1.0 shows all results"
    score_e_thresh: "the score E-value threshold above which the same rank is given to all sequences;  default: no threshold"
    min_gene_count: "only consider GO terms annotated with a at least <n> genes; default: <n> = 1)."
    gs: "extract gene scores rather than p-values from the CisML input file(s); default: use CisML p-values"
    seed: "seed the random number generator; different values of <seed> will give slightly different outputs; default: <seed> is chosen randomly"
    no_status: "don't print progress messages to stderr"
    verbosity: "[1|2|3|4] control level of progress messages; 1 = Quiet, 2 = Normal, 3 = High, 4 = Very High; default: 2"
    go_term_database: ""
    scoring_file: ""
  }
}