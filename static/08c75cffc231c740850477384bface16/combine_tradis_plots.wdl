version 1.0

task CombineTradisPlots {
  input {
    String pP
  }
  command <<<
    combine_tradis_plots \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""}
  >>>
}