version 1.0

task SeqtkHety {
  input {
    Int? window_size
    Int? start_positions_window
    Boolean? treat_lowercases_masked
    String in_dot_fa
  }
  command <<<
    seqtk hety \
      ~{in_dot_fa} \
      ~{if defined(window_size) then ("-w " +  '"' + window_size + '"') else ""} \
      ~{if defined(start_positions_window) then ("-t " +  '"' + start_positions_window + '"') else ""} \
      ~{if (treat_lowercases_masked) then "-m" else ""}
  >>>
  parameter_meta {
    window_size: "window size [50000]"
    start_positions_window: "# start positions in a window [5]"
    treat_lowercases_masked: "treat lowercases as masked"
    in_dot_fa: ""
  }
  output {
    File out_stdout = stdout()
  }
}