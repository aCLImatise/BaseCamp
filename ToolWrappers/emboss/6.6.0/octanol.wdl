version 1.0

task Octanol {
  input {
    Boolean? data_file
    Boolean? width
    Boolean? plot_octanol
    Boolean? plot_interface
  }
  command <<<
    octanol \
      ~{if (data_file) then "-datafile" else ""} \
      ~{if (width) then "-width" else ""} \
      ~{if (plot_octanol) then "-plotoctanol" else ""} \
      ~{if (plot_interface) then "-plotinterface" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    data_file: "datafile   [Ewhite-wimley.dat] White-Wimley data file"
    width: "integer    [19] Window size (Integer from 1 to 200)"
    plot_octanol: "boolean    [N] Display the octanol plot"
    plot_interface: "boolean    [N] Display the interface plot"
  }
  output {
    File out_stdout = stdout()
  }
}