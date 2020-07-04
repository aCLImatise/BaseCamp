version 1.0

task FilterSplits.py {
  input {
    String? var_input
    String? extra
    String? var_output
    String? var_map
    Boolean? quiet
    String? author
  }
  command <<<
    filter_splits.py \
      ~{if defined(var_input) then ("--input " +  '"' + var_input + '"') else ""} \
      ~{if defined(extra) then ("--extra " +  '"' + extra + '"') else ""} \
      ~{if defined(var_output) then ("--output " +  '"' + var_output + '"') else ""} \
      ~{if defined(var_map) then ("--map " +  '"' + var_map + '"') else ""} \
      ~{true="--quiet" false="" quiet} \
      ~{if defined(author) then ("--author " +  '"' + author + '"') else ""}
  >>>
  parameter_meta {
    var_input: "The input file containing the fusion (chromosomal) coordinates for each fusion genes."
    extra: "The input file containing the fusion (chromosomal) coordinates for each fusion genes."
    var_output: "The output file where the frame predictions are written."
    var_map: "The output file where the frame predictions are written."
    quiet: "Do not print status messages to stdout."
    author: "Daniel Nicorici, E-mail: Daniel.Nicorici@gmail.com"
  }
}