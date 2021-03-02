version 1.0

task Graphembed {
  input {
    File? specify_input_file
    File? specify_classes_data
    Directory? output_directory_name
    Float? class_confidence
    Int? number_links_closest
    Int? number_links_denser
    Int? number_limit_thehorizon
    Int? number_mutual_nearest
    Boolean? normalization
    Boolean? feature_selection
    Boolean? correlation_transformation
    Int? min_threshold
    Int? max_threshold
    Int? random_state
    Boolean? display
    Int? figure_size
    String? cmap_name
    Directory? do_not_add_timestamp
    Boolean? verbose
    String graph_embed
  }
  command <<<
    graphembed \
      ~{graph_embed} \
      ~{if defined(specify_input_file) then ("-i " +  '"' + specify_input_file + '"') else ""} \
      ~{if defined(specify_classes_data) then ("-t " +  '"' + specify_classes_data + '"') else ""} \
      ~{if defined(output_directory_name) then ("-o " +  '"' + output_directory_name + '"') else ""} \
      ~{if defined(class_confidence) then ("--class_confidence " +  '"' + class_confidence + '"') else ""} \
      ~{if defined(number_links_closest) then ("-k " +  '"' + number_links_closest + '"') else ""} \
      ~{if defined(number_links_denser) then ("-d " +  '"' + number_links_denser + '"') else ""} \
      ~{if defined(number_limit_thehorizon) then ("-z " +  '"' + number_limit_thehorizon + '"') else ""} \
      ~{if defined(number_mutual_nearest) then ("-l " +  '"' + number_mutual_nearest + '"') else ""} \
      ~{if (normalization) then "--normalization" else ""} \
      ~{if (feature_selection) then "--feature_selection" else ""} \
      ~{if (correlation_transformation) then "--correlation_transformation" else ""} \
      ~{if defined(min_threshold) then ("--min_threshold " +  '"' + min_threshold + '"') else ""} \
      ~{if defined(max_threshold) then ("--max_threshold " +  '"' + max_threshold + '"') else ""} \
      ~{if defined(random_state) then ("--random_state " +  '"' + random_state + '"') else ""} \
      ~{if (display) then "--display" else ""} \
      ~{if defined(figure_size) then ("--figure_size " +  '"' + figure_size + '"') else ""} \
      ~{if defined(cmap_name) then ("--cmap_name " +  '"' + cmap_name + '"') else ""} \
      ~{if (do_not_add_timestamp) then "--do_not_add_timestamp" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    specify_input_file: "Specify input data file in CSV format."
    specify_classes_data: "Specify classes data file in CSV format."
    output_directory_name: "Output directory name [default: out]."
    class_confidence: "Confidence bias for clustering\\n[default: 1.0]."
    number_links_closest: "Number of links towards closest neighbors\\nwith same class [default: 5]."
    number_links_denser: "Number of links towards denser neighbors\\nwith a different class [default: 1]"
    number_limit_thehorizon: "Number of nearest neighbors to limit the\\nhorizon to limit search of denser neighbors\\nof a different class [default: 10]"
    number_mutual_nearest: "Number of mutual nearest neighbors that\\ndefine outlier instances [default: 0]"
    normalization: "Convert data matrix to normalized matrix."
    feature_selection: "Select most discriminative features."
    correlation_transformation: "Convert data matrix to corr coeff matrix."
    min_threshold: "Min num instances per class [default: 5]"
    max_threshold: "Max num instances per class [default: 400]"
    random_state: "Random seed [default: 1]"
    display: "Display graphs on terminal."
    figure_size: "Figure size [default: 15]."
    cmap_name: "Color scheme [default: gist_ncar]."
    do_not_add_timestamp: "Do not use timestamp as suffix for\\noutput directory name."
    verbose: "Print more text."
    graph_embed: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory_name = "${in_output_directory_name}"
    Directory out_do_not_add_timestamp = "${in_do_not_add_timestamp}"
  }
}