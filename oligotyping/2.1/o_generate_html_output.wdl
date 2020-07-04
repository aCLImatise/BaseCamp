version 1.0

task OGenerateHtmlOutput {
  input {
    String? output_directory
    String? entropy_figure
  }
  command <<<
    o-generate-html-output \
      ~{if defined(output_directory) then ("--output-directory " +  '"' + output_directory + '"') else ""} \
      ~{if defined(entropy_figure) then ("--entropy-figure " +  '"' + entropy_figure + '"') else ""}
  >>>
  parameter_meta {
    output_directory: "Output directory for HTML output to be stored"
    entropy_figure: "Path for entropy figure *without* the file extension (e.g. only \"/path/to/entropy\" for \"/path/to/entropy.png\")"
  }
}