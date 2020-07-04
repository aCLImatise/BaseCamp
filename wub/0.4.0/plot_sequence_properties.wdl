version 1.0

task PlotSequenceProperties.pyInputFastx {
  input {
    String? f
    String? b
    String? r
    String plot_sequence_properties_do_tpy
  }
  command <<<
    plot_sequence_properties.py input_fastx \
      ~{plot_sequence_properties_do_tpy} \
      ~{if defined(f) then ("-f " +  '"' + f + '"') else ""} \
      ~{if defined(b) then ("-b " +  '"' + b + '"') else ""} \
      ~{if defined(r) then ("-r " +  '"' + r + '"') else ""}
  >>>
  parameter_meta {
    f: ""
    b: ""
    r: ""
    plot_sequence_properties_do_tpy: ""
  }
}