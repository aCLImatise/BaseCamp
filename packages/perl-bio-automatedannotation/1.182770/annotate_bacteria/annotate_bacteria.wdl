version 1.0

task AnnotateBacteria {
  input {
    String clusters
    String tigrfams
  }
  command <<<
    annotate_bacteria \
      ~{clusters} \
      ~{tigrfams}
  >>>
  parameter_meta {
    clusters: "Conserved domain database"
    tigrfams: "pfam (A)"
  }
  output {
    File out_stdout = stdout()
  }
}