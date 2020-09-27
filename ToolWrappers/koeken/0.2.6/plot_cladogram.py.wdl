version 1.0

task PlotCladogrampy {
  input {
    Int? max_lev
    String? clade_sep
    String input_file
    String output_file
  }
  command <<<
    plot_cladogram_py \
      ~{input_file} \
      ~{output_file} \
      ~{if defined(max_lev) then ("--max_lev " +  '"' + max_lev + '"') else ""} \
      ~{if defined(clade_sep) then ("--clade_sep " +  '"' + clade_sep + '"') else ""}
  >>>
  parameter_meta {
    max_lev: ""
    clade_sep: ""
    input_file: "tab delimited input file"
    output_file: "the file for the output image"
  }
  output {
    File out_stdout = stdout()
  }
}