version 1.0

task DmZdump {
  input {
    Boolean? ve_bose
    String timezone_dot
  }
  command <<<
    dm_zdump \
      ~{timezone_dot} \
      ~{if (ve_bose) then "--vebose" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    ve_bose: ": Prints a full description of each"
    timezone_dot: "-c/--cutoff YEAR : Cut off verbose output near the"
  }
  output {
    File out_stdout = stdout()
  }
}