version 1.0

task CombineTradisPlots {
  input {
    String? p
  }
  command <<<
    combine_tradis_plots \
      ~{if defined(p) then ("-p " +  '"' + p + '"') else ""}
  >>>
  parameter_meta {
    p: ""
  }
}