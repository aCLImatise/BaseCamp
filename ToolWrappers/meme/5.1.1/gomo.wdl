version 1.0

task Gomo {
  input {
    Directory? name_directory_not
    Directory? oc
    Directory? text
    File? dag
    File? motifs
    String? motif
    Int? shuffle_scores
    Float? qvalue_threshold_considered
    String? score_e_thresh
    Int? min_gene_count
    Boolean? gs
    Int? seed
    Boolean? no_status
    Boolean? verbosity
    String go_term_database
    File scoring_file
  }
  command <<<
    gomo \
      ~{go_term_database} \
      ~{scoring_file} \
      ~{if defined(name_directory_not) then ("--o " +  '"' + name_directory_not + '"') else ""} \
      ~{if defined(oc) then ("--oc " +  '"' + oc + '"') else ""} \
      ~{if (text) then "--text" else ""} \
      ~{if defined(dag) then ("--dag " +  '"' + dag + '"') else ""} \
      ~{if defined(motifs) then ("--motifs " +  '"' + motifs + '"') else ""} \
      ~{if defined(motif) then ("--motif " +  '"' + motif + '"') else ""} \
      ~{if defined(shuffle_scores) then ("--shuffle_scores " +  '"' + shuffle_scores + '"') else ""} \
      ~{if defined(qvalue_threshold_considered) then ("--t " +  '"' + qvalue_threshold_considered + '"') else ""} \
      ~{if defined(score_e_thresh) then ("--score_E_thresh " +  '"' + score_e_thresh + '"') else ""} \
      ~{if defined(min_gene_count) then ("--min_gene_count " +  '"' + min_gene_count + '"') else ""} \
      ~{if (gs) then "--gs" else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if (no_status) then "--nostatus" else ""} \
      ~{if (verbosity) then "--verbosity" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    name_directory_not: "name of the directory for output. Will not replace\\nan existing directory; default: 'gomo_out'"
    oc: "name of the directory for output. Will replace an\\nexisting directory; default: 'gomo_out'"
    text: "output tab separated values format to standard out\\nand don't create output directory or files;\\ndefault: create HTML and XML in <output dir>;"
    dag: "path to the optional Gene Ontology DAG file to be\\nused for highlighting the specific terms in the\\nGOMo HTML output; default: no highlighting"
    motifs: "path to the optional motif file in MEME format\\nused to generate (all of the) scoring file(s);\\nused for adding sequence logos to HTML output;\\ndefault: no logos in output;"
    motif: "limit results to specified motif; option may\\nbe repeated; default: use all motifs"
    shuffle_scores: "generate empirical null by shuffling the sequence\\nto score assignments and computing statistics <n>\\ntimes; default: <n>=1000"
    qvalue_threshold_considered: "the q-value threshold considered significant;\\ndefault: <q>=0.05, q >= 1.0 shows all results"
    score_e_thresh: "the score E-value threshold above which the same\\nrank is given to all sequences;\\ndefault: no threshold"
    min_gene_count: "only consider GO terms annotated with a at least\\n<n> genes; default: <n> = 1)."
    gs: "extract gene scores rather than p-values from the\\nCisML input file(s); default: use CisML p-values"
    seed: "seed the random number generator; different\\nvalues of <seed> will give slightly different\\noutputs; default: <seed> is chosen randomly"
    no_status: "don't print progress messages to stderr"
    verbosity: "[1|2|3|4] control level of progress messages;\\n1 = Quiet, 2 = Normal, 3 = High, 4 = Very High;\\ndefault: 2"
    go_term_database: ""
    scoring_file: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_name_directory_not = "${in_name_directory_not}"
    Directory out_oc = "${in_oc}"
    Directory out_text = "${in_text}"
    File out_dag = "${in_dag}"
    File out_motifs = "${in_motifs}"
  }
}