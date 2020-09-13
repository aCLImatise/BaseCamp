version 1.0

task GotreeGenerate {
  input {
    Int? nb_trees
    Int? number_tips_generate_default
    Boolean? rooted
    String? format
    Int? seed
    Int? threads
  }
  command <<<
    gotree generate \
      ~{if defined(nb_trees) then ("--nbtrees " +  '"' + nb_trees + '"') else ""} \
      ~{if defined(number_tips_generate_default) then ("--output " +  '"' + number_tips_generate_default + '"') else ""} \
      ~{if (rooted) then "--rooted" else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  parameter_meta {
    nb_trees: "Number of trees to generate (default 1)"
    number_tips_generate_default: "Number of tips of the tree to generate (default \\\"stdout\\\")"
    rooted: "Generate rooted trees"
    format: "Input tree format (newick, nexus, or phyloxml) (default \\\"newick\\\")"
    seed: "Random Seed: -1 = nano seconds since 1970/01/01 00:00:00 (default -1)"
    threads: "Number of threads (Max=8) (default 1)"
  }
  output {
    File out_stdout = stdout()
  }
}