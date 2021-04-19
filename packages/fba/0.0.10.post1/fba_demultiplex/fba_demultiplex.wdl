version 1.0

task FbaDemultiplex {
  input {
    File? specify_input_matrix
    Directory? output_directory
    String? specify_demultiplexing_method
    Float? quantile
    String? clustering_method
    Boolean? visualization
    String? visualization_method
  }
  command <<<
    fba demultiplex \
      ~{if defined(specify_input_matrix) then ("--input " +  '"' + specify_input_matrix + '"') else ""} \
      ~{if defined(output_directory) then ("--output_directory " +  '"' + output_directory + '"') else ""} \
      ~{if defined(specify_demultiplexing_method) then ("-m " +  '"' + specify_demultiplexing_method + '"') else ""} \
      ~{if defined(quantile) then ("--quantile " +  '"' + quantile + '"') else ""} \
      ~{if defined(clustering_method) then ("--clustering_method " +  '"' + clustering_method + '"') else ""} \
      ~{if (visualization) then "--visualization" else ""} \
      ~{if defined(visualization_method) then ("--visualization_method " +  '"' + visualization_method + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/fba:0.0.10.post1--pyhdfd78af_0"
  }
  parameter_meta {
    specify_input_matrix: "specify an input file (feature count matrix). The\\noutput of `count`"
    output_directory: "specify a output directory. Default (./demultiplexed)"
    specify_demultiplexing_method: "specify demultiplexing method. '1': Stoeckius et al.\\n2018. Default (1)"
    quantile: "specify quantile cutoff for the probability mass\\nfunction. Default (0.9999)"
    clustering_method: "specify inital clustering method. Default (kmedoids)"
    visualization: "specify to visualize demultiplexing result"
    visualization_method: "specify embedding method for visualization (works if\\n'-v' is given). Default (tsne)\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory = "${in_output_directory}"
  }
}