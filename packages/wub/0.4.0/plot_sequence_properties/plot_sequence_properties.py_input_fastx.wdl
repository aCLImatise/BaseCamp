version 1.0

task PlotSequencePropertiespyInputFastx {
  input {
    String? r
    String? b
    String? f
    String plot_sequence_properties_do_tpy
  }
  command <<<
    plot_sequence_properties_py input_fastx \
      ~{plot_sequence_properties_do_tpy} \
      ~{if defined(r) then ("-r " +  '"' + r + '"') else ""} \
      ~{if defined(b) then ("-b " +  '"' + b + '"') else ""} \
      ~{if defined(f) then ("-f " +  '"' + f + '"') else ""}
  >>>
  parameter_meta {
    r: ""
    b: ""
    f: ""
    plot_sequence_properties_do_tpy: ""
  }
  output {
    File out_stdout = stdout()
  }
}