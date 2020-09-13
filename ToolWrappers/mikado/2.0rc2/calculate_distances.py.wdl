version 1.0

task CalculateDistancespy {
  input {
    String? out
    String? log
    String? log_level
    String? procs
  }
  command <<<
    calculate_distances_py \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{if defined(log_level) then ("--log-level " +  '"' + log_level + '"') else ""} \
      ~{if defined(procs) then ("--procs " +  '"' + procs + '"') else ""}
  >>>
  parameter_meta {
    out: ""
    log: ""
    log_level: ""
    procs: ""
  }
  output {
    File out_stdout = stdout()
  }
}