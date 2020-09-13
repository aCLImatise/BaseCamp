version 1.0

task Ogeneratehtmloutput {
  input {
    Directory? output_directory
    File? entropy_figure
    String dict
  }
  command <<<
    o_generate_html_output \
      ~{dict} \
      ~{if defined(output_directory) then ("--output-directory " +  '"' + output_directory + '"') else ""} \
      ~{if defined(entropy_figure) then ("--entropy-figure " +  '"' + entropy_figure + '"') else ""}
  >>>
  parameter_meta {
    output_directory: "Output directory for HTML output to be stored"
    entropy_figure: "Path for entropy figure *without* the file extension\\n(e.g. only \\\"/path/to/entropy\\\" for\\n\\\"/path/to/entropy.png\\\")\\n"
    dict: "Serialized run info dictionary (RUNINFO.cPickle)"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory = "${in_output_directory}"
  }
}