version 1.0

task Lamassemble {
  input {
    String? number_parallel_threads
    String? use_minimum_positions
    String? max_initial_matches
    String? max_gap_length
    String last_train_dot_out
    String sequences_dot_fx
  }
  command <<<
    lamassemble \
      ~{last_train_dot_out} \
      ~{sequences_dot_fx} \
      ~{if defined(number_parallel_threads) then ("-P " +  '"' + number_parallel_threads + '"') else ""} \
      ~{if defined(use_minimum_positions) then ("-W " +  '"' + use_minimum_positions + '"') else ""} \
      ~{if defined(max_initial_matches) then ("-m " +  '"' + max_initial_matches + '"') else ""} \
      ~{if defined(max_gap_length) then ("-z " +  '"' + max_gap_length + '"') else ""}
  >>>
  parameter_meta {
    number_parallel_threads: "number of parallel threads (default=1)"
    use_minimum_positions: "use minimum positions in length-W windows (default=19)"
    max_initial_matches: "max initial matches per query position (default=5)"
    max_gap_length: "max gap length (default=30)"
    last_train_dot_out: ""
    sequences_dot_fx: ""
  }
}