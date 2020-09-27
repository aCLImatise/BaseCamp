version 1.0

task FilterAwaySubsetpy {
  input {
    Int? fuzzy_junction
  }
  command <<<
    filter_away_subset_py \
      ~{if defined(fuzzy_junction) then ("--fuzzy_junction " +  '"' + fuzzy_junction + '"') else ""}
  >>>
  parameter_meta {
    fuzzy_junction: "Fuzzy junction max dist (default: 5bp)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}