version 1.0

task AssemblyStats {
  input {
    String stats
    String list_of_fast_a_slash_q_files
  }
  command <<<
    assembly-stats \
      ~{stats} \
      ~{list_of_fast_a_slash_q_files}
  >>>
  parameter_meta {
    stats: ""
    list_of_fast_a_slash_q_files: ""
  }
}