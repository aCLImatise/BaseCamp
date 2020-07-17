version 1.0

task PoppunkTsne {
  input {
    String? distances
    String? name_output_file
    String? perplexity
    String? verbosity
  }
  command <<<
    poppunk_tsne \
      ~{if defined(distances) then ("--distances " +  '"' + distances + '"') else ""} \
      ~{if defined(name_output_file) then ("--output " +  '"' + name_output_file + '"') else ""} \
      ~{if defined(perplexity) then ("--perplexity " +  '"' + perplexity + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""}
  >>>
  parameter_meta {
    distances: "Prefix of input pickle and numpy file of pre- calculated distances"
    name_output_file: "Name of output file"
    perplexity: "Perplexity used to generate t-SNE projection [default = 30]"
    verbosity: "Verbosity level for t-SNE (0-3) [default = 0]"
  }
}