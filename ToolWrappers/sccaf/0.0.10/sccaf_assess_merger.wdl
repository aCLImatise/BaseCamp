version 1.0

task Sccafassessmerger {
  input {
    Directory? input_directory
    File? rounds_file
    File? output_plot
  }
  command <<<
    sccaf_assess_merger \
      ~{if defined(input_directory) then ("--input-directory " +  '"' + input_directory + '"') else ""} \
      ~{if defined(rounds_file) then ("--rounds-file " +  '"' + rounds_file + '"') else ""} \
      ~{if defined(output_plot) then ("--output-plot " +  '"' + output_plot + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_directory: "Path to input directory where asses results are"
    rounds_file: "File listing rounds ordered"
    output_plot: "Path for merged assessment plot. Extension determines\\nformat (pdf/png).\\n"
  }
  output {
    File out_stdout = stdout()
  }
}