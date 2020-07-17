version 1.0

task SccafAssessMerger {
  input {
    String? input_directory
    String? rounds_file
    String? output_plot
  }
  command <<<
    sccaf-assess-merger \
      ~{if defined(input_directory) then ("--input-directory " +  '"' + input_directory + '"') else ""} \
      ~{if defined(rounds_file) then ("--rounds-file " +  '"' + rounds_file + '"') else ""} \
      ~{if defined(output_plot) then ("--output-plot " +  '"' + output_plot + '"') else ""}
  >>>
  parameter_meta {
    input_directory: "Path to input directory where asses results are"
    rounds_file: "File listing rounds ordered"
    output_plot: "Path for merged assessment plot. Extension determines format (pdf/png)."
  }
}