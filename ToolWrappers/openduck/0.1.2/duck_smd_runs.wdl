version 1.0

task DuckSmdRuns {
  input {
    String? equilibrated_system_input
    File? pickle
    Int? num_runs
    Int? md_len
    String? start_dist
    String? in_it_velocity
    String? gpu_id
  }
  command <<<
    duck_smd_runs \
      ~{if defined(equilibrated_system_input) then ("--input " +  '"' + equilibrated_system_input + '"') else ""} \
      ~{if defined(pickle) then ("--pickle " +  '"' + pickle + '"') else ""} \
      ~{if defined(num_runs) then ("--num-runs " +  '"' + num_runs + '"') else ""} \
      ~{if defined(md_len) then ("--md-len " +  '"' + md_len + '"') else ""} \
      ~{if defined(start_dist) then ("--start-dist " +  '"' + start_dist + '"') else ""} \
      ~{if defined(in_it_velocity) then ("--init-velocity " +  '"' + in_it_velocity + '"') else ""} \
      ~{if defined(gpu_id) then ("--gpu-id " +  '"' + gpu_id + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    equilibrated_system_input: "Equilibrated system as input"
    pickle: "Pickle file"
    num_runs: "Number of SMD runs."
    md_len: "MD run length."
    start_dist: "Starting distance"
    in_it_velocity: "Initial velocity"
    gpu_id: "GPU ID (optional); if not specified, runs on CPU only."
  }
  output {
    File out_stdout = stdout()
  }
}