version 1.0

task FilterMapPreSplitting.py {
  input {
    String? input_file_containing
    String? var_output
    String? extra
    Boolean? quiet
    String? author
  }
  command <<<
    filter_map_pre-splitting.py \
      ~{if defined(input_file_containing) then ("--input " +  '"' + input_file_containing + '"') else ""} \
      ~{if defined(var_output) then ("--output " +  '"' + var_output + '"') else ""} \
      ~{if defined(extra) then ("--extra " +  '"' + extra + '"') else ""} \
      ~{true="--quiet" false="" quiet} \
      ~{if defined(author) then ("--author " +  '"' + author + '"') else ""}
  >>>
  parameter_meta {
    input_file_containing: "The input file containing the fusion (chromosomal) coordinates for each fusion genes."
    var_output: "The output file where the frame predictions are written."
    extra: "The output file where the frame predictions are written."
    quiet: "Do not print status messages to stdout."
    author: "Daniel Nicorici, E-mail: Daniel.Nicorici@gmail.com"
  }
}