version 1.0

task KmcTools {
  input {
    Boolean? value_total_number
    Boolean? enable_verbose_mode
    Boolean? hp
  }
  command <<<
    kmc_tools \
      ~{if (value_total_number) then "-t" else ""} \
      ~{if (enable_verbose_mode) then "-v" else ""} \
      ~{if (hp) then "-hp" else ""}
  >>>
  parameter_meta {
    value_total_number: "<value>            - total number of threads (default: no. of CPU cores)"
    enable_verbose_mode: "- enable verbose mode (shows some information) (default: false)"
    hp: "- hide percentage progress (default: false)"
  }
  output {
    File out_stdout = stdout()
  }
}