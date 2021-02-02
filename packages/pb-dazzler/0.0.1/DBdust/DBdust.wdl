version 1.0

task DBdust {
  input {
    Boolean? dust_algorithm_window
    Boolean? dust_algorithm_threshold
    Boolean? record_only_lowcomplexity
    Boolean? take_account_base
  }
  command <<<
    DBdust \
      ~{if (dust_algorithm_window) then "-w" else ""} \
      ~{if (dust_algorithm_threshold) then "-t" else ""} \
      ~{if (record_only_lowcomplexity) then "-m" else ""} \
      ~{if (take_account_base) then "-b" else ""}
  >>>
  parameter_meta {
    dust_algorithm_window: ": DUST algorithm window size."
    dust_algorithm_threshold: ": DUST algorithm threshold."
    record_only_lowcomplexity: ": Record only low-complexity intervals >= this size."
    take_account_base: ": Take into account base composition bias."
  }
  output {
    File out_stdout = stdout()
  }
}