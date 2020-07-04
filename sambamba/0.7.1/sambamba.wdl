version 1.0

task Sambamba {
  input {
    Boolean? quiet_mode_show
  }
  command <<<
    sambamba \
      ~{true="-q" false="" quiet_mode_show}
  >>>
  parameter_meta {
    quiet_mode_show: "quiet mode (do not show banner)"
  }
}