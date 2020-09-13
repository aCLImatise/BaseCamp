version 1.0

task Slclust {
  input {
    String? _verbosity_at
    String? opts
    String file_of_pairs
    String clusters
  }
  command <<<
    slclust \
      ~{opts} \
      ~{file_of_pairs} \
      ~{clusters} \
      ~{if defined(_verbosity_at) then ("-j " +  '"' + _verbosity_at + '"') else ""}
  >>>
  parameter_meta {
    _verbosity_at: "[v] verbosity at 'info', 'debug'"
    opts: ""
    file_of_pairs: ""
    clusters: ""
  }
  output {
    File out_stdout = stdout()
  }
}