version 1.0

task FilterAwaySubset.py {
  input {
    String? fuzzy_junction
    String input_prefix
  }
  command <<<
    filter_away_subset.py \
      ~{input_prefix} \
      ~{if defined(fuzzy_junction) then ("--fuzzy_junction " +  '"' + fuzzy_junction + '"') else ""}
  >>>
  parameter_meta {
    fuzzy_junction: "Fuzzy junction max dist (default: 5bp)"
    input_prefix: "Input prefix (ex: test.collapsed.min_fl_2)"
  }
}