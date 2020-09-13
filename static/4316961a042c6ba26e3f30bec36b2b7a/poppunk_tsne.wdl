version 1.0

task PoppunkTsne {
  input {
    File? distances
    File? name_output_file
    Int? perplexity
    Int? verbosity
  }
  command <<<
    poppunk_tsne \
      ~{if defined(distances) then ("--distances " +  '"' + distances + '"') else ""} \
      ~{if defined(name_output_file) then ("--output " +  '"' + name_output_file + '"') else ""} \
      ~{if defined(perplexity) then ("--perplexity " +  '"' + perplexity + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""}
  >>>
  parameter_meta {
    distances: "Prefix of input pickle and numpy file of pre-\\ncalculated distances"
    name_output_file: "Name of output file"
    perplexity: "Perplexity used to generate t-SNE projection [default\\n= 30]"
    verbosity: "Verbosity level for t-SNE (0-3) [default = 0]\\n"
  }
  output {
    File out_stdout = stdout()
    File out_name_output_file = "${in_name_output_file}"
  }
}