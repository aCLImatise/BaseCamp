version 1.0

task Graphembed {
  input {
    File? specify_input_data
    File? specify_classes_data
    String? output_directory_name
    String? class_confidence
    String? number_links_closest
    String? number_links_denser
    String? number_limit_horizon
    String? number_mutual_nearest
    Boolean? normalization
    Boolean? feature_selection
    Boolean? correlation_transformation
    String? min_threshold
    String? max_threshold
    String? random_state
    Boolean? display
    String? figure_size
    String? cmap_name
    Boolean? do_not_add_timestamp
    Boolean? verbose
    String graph_embed
  }
  command <<<
    graphembed \
      ~{graph_embed} \
      ~{if defined(specify_input_data) then ("-i " +  '"' + specify_input_data + '"') else ""} \
      ~{if defined(specify_classes_data) then ("-t " +  '"' + specify_classes_data + '"') else ""} \
      ~{if defined(output_directory_name) then ("-o " +  '"' + output_directory_name + '"') else ""} \
      ~{if defined(class_confidence) then ("--class_confidence " +  '"' + class_confidence + '"') else ""} \
      ~{if defined(number_links_closest) then ("-k " +  '"' + number_links_closest + '"') else ""} \
      ~{if defined(number_links_denser) then ("-d " +  '"' + number_links_denser + '"') else ""} \
      ~{if defined(number_limit_horizon) then ("-z " +  '"' + number_limit_horizon + '"') else ""} \
      ~{if defined(number_mutual_nearest) then ("-l " +  '"' + number_mutual_nearest + '"') else ""} \
      ~{true="--normalization" false="" normalization} \
      ~{true="--feature_selection" false="" feature_selection} \
      ~{true="--correlation_transformation" false="" correlation_transformation} \
      ~{if defined(min_threshold) then ("--min_threshold " +  '"' + min_threshold + '"') else ""} \
      ~{if defined(max_threshold) then ("--max_threshold " +  '"' + max_threshold + '"') else ""} \
      ~{if defined(random_state) then ("--random_state " +  '"' + random_state + '"') else ""} \
      ~{true="--display" false="" display} \
      ~{if defined(figure_size) then ("--figure_size " +  '"' + figure_size + '"') else ""} \
      ~{if defined(cmap_name) then ("--cmap_name " +  '"' + cmap_name + '"') else ""} \
      ~{true="--do_not_add_timestamp" false="" do_not_add_timestamp} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    specify_input_data: "Specify input data file in CSV format."
    specify_classes_data: "Specify classes data file in CSV format."
    output_directory_name: "Output directory name [default: out]."
    class_confidence: "Confidence bias for clustering [default: 1.0]."
    number_links_closest: "Number of links towards closest neighbors with same class [default: 5]."
    number_links_denser: "Number of links towards denser neighbors with a different class [default: 1]"
    number_limit_horizon: "Number of nearest neighbors to limit the horizon to limit search of denser neighbors of a different class [default: 10]"
    number_mutual_nearest: "Number of mutual nearest neighbors that define outlier instances [default: 0]"
    normalization: "Convert data matrix to normalized matrix."
    feature_selection: "Select most discriminative features."
    correlation_transformation: "Convert data matrix to corr coeff matrix."
    min_threshold: "Min num instances per class [default: 5]"
    max_threshold: "Max num instances per class [default: 400]"
    random_state: "Random seed [default: 1]"
    display: "Display graphs on terminal."
    figure_size: "Figure size [default: 15]."
    cmap_name: "Color scheme [default: gist_ncar]."
    do_not_add_timestamp: "Do not use timestamp as suffix for output directory name."
    verbose: "Print more text."
    graph_embed: ""
  }
}