version 1.0

task AnviAnalyzeSynteny {
  input {
    String? n_gram_window_range
    File? output_file
    Boolean? analyze_unknown_functions
    File? e
    String? annotation_source
    String name
  }
  command <<<
    anvi-analyze-synteny \
      ~{name} \
      ~{if defined(n_gram_window_range) then ("--ngram-window-range " +  '"' + n_gram_window_range + '"') else ""} \
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""} \
      ~{true="--analyze-unknown-functions" false="" analyze_unknown_functions} \
      ~{if defined(e) then ("-e " +  '"' + e + '"') else ""} \
      ~{if defined(annotation_source) then ("--annotation-source " +  '"' + annotation_source + '"') else ""}
  >>>
  parameter_meta {
    n_gram_window_range: "The range of window sizes of Ngrams to analyze for synteny patterns.Please format the window-range as x:y (e.g. Window sizes 2 to 4 would be denoted as: 2:4)"
    output_file: "File path to store results."
    analyze_unknown_functions: "Provide this flag if you want anvi-analyze-synteny to take into account Ngrams that contain gene calls that have no annotation."
    e: ""
    annotation_source: ""
    name: ""
  }
}