version 1.0

task DRepEvaluate {
  input {
    Int? processors
    Boolean? debug
    Float? warn_dist
    Float? warn_sim
    Float? warn_aln
    Boolean? things_evaluate_input
  }
  command <<<
    dRep evaluate \
      ~{if defined(processors) then ("--processors " +  '"' + processors + '"') else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if defined(warn_dist) then ("--warn_dist " +  '"' + warn_dist + '"') else ""} \
      ~{if defined(warn_sim) then ("--warn_sim " +  '"' + warn_sim + '"') else ""} \
      ~{if defined(warn_aln) then ("--warn_aln " +  '"' + warn_aln + '"') else ""} \
      ~{if (things_evaluate_input) then "-e" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    processors: "threads (default: 6)"
    debug: "make extra debugging output (default: False)"
    warn_dist: "How far from the threshold to throw cluster warnings\\n(default: 0.25)"
    warn_sim: "Similarity threshold for warnings between dereplicated\\ngenomes (default: 0.98)"
    warn_aln: "Minimum aligned fraction for warnings between\\ndereplicated genomes (ANIn) (default: 0.25)"
    things_evaluate_input: "[EVALUATE [EVALUATE ...]], --evaluate [EVALUATE [EVALUATE ...]]\\nThings to evaluate Input 'all' or 'a' to evaluate all\\n1) Evaluate de-replicated genome similarity\\n2) Throw warnings for clusters that were almost different\\n3) Generate a database of information on winning genomes\\n(default: None)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}