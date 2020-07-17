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
      ~{true="-w" false="" dust_algorithm_window} \
      ~{true="-t" false="" dust_algorithm_threshold} \
      ~{true="-m" false="" record_only_lowcomplexity} \
      ~{true="-b" false="" take_account_base}
  >>>
  parameter_meta {
    dust_algorithm_window: ": DUST algorithm window size."
    dust_algorithm_threshold: ": DUST algorithm threshold."
    record_only_lowcomplexity: ": Record only low-complexity intervals >= this size."
    take_account_base: ": Take into account base composition bias."
  }
}