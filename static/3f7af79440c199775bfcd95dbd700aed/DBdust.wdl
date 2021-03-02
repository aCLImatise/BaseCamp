version 1.0

task DBdust {
  input {
    Boolean? dust_algorithm_window
    Boolean? dust_algorithm_threshold
    Boolean? record_lowcomplexity_intervals
    Boolean? take_composition_bias
  }
  command <<<
    DBdust \
      ~{if (dust_algorithm_window) then "-w" else ""} \
      ~{if (dust_algorithm_threshold) then "-t" else ""} \
      ~{if (record_lowcomplexity_intervals) then "-m" else ""} \
      ~{if (take_composition_bias) then "-b" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    dust_algorithm_window: ": DUST algorithm window size."
    dust_algorithm_threshold: ": DUST algorithm threshold."
    record_lowcomplexity_intervals: ": Record only low-complexity intervals >= this size."
    take_composition_bias: ": Take into account base composition bias."
  }
  output {
    File out_stdout = stdout()
  }
}