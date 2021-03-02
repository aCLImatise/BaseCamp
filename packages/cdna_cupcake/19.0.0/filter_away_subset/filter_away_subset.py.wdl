version 1.0

task FilterAwaySubsetpy {
  input {
    Int? fuzzy_junction
  }
  command <<<
    filter_away_subset_py \
      ~{if defined(fuzzy_junction) then ("--fuzzy_junction " +  '"' + fuzzy_junction + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/cdna_cupcake:19.0.0--py37h97743b1_0"
  }
  parameter_meta {
    fuzzy_junction: "Fuzzy junction max dist (default: 5bp)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}