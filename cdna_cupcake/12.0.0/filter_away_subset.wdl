version 1.0

task FilterAwaySubset.py {
  input {
    String fuzzyFuzzyJunction
    String? inputInputPrefix
  }
  command <<<
    filter_away_subset.py \
      ~{inputInputPrefix} \
      ~{if defined(fuzzyFuzzyJunction) then ("--fuzzy_junction " +  '"' + fuzzyFuzzyJunction + '"') else ""}
  >>>
}