version 1.0

task DmZdump {
  input {
    Boolean? h_slash_help
    Boolean? v_slash_ve_bose
    String timezone_dot
  }
  command <<<
    dm_zdump \
      ~{timezone_dot} \
      ~{if (h_slash_help) then "-h/--help" else ""} \
      ~{if (v_slash_ve_bose) then "-v/--vebose" else ""}
  >>>
  parameter_meta {
    h_slash_help: ": Print help."
    v_slash_ve_bose: ": Prints a full description of each"
    timezone_dot: "-c/--cutoff YEAR : Cut off verbose output near the"
  }
  output {
    File out_stdout = stdout()
  }
}