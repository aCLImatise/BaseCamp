version 1.0

task LefseplotCladogrampy {
  input {
    String? clade_sep
    String input_file
    String output_file
  }
  command <<<
    lefse_plot_cladogram_py \
      ~{input_file} \
      ~{output_file} \
      ~{if defined(clade_sep) then ("--clade_sep " +  '"' + clade_sep + '"') else ""}
  >>>
  parameter_meta {
    clade_sep: ""
    input_file: "tab delimited input file"
    output_file: "the file for the output image"
  }
  output {
    File out_stdout = stdout()
  }
}