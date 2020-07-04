version 1.0

task Extend.py {
  input {
    String? input_tpr
    String? time
    String? dt
    String? nt
    String? nt_mpi
    String? gpu_id
  }
  command <<<
    extend.py \
      ~{if defined(input_tpr) then ("-s " +  '"' + input_tpr + '"') else ""} \
      ~{if defined(time) then ("-time " +  '"' + time + '"') else ""} \
      ~{if defined(dt) then ("-dt " +  '"' + dt + '"') else ""} \
      ~{if defined(nt) then ("-nt " +  '"' + nt + '"') else ""} \
      ~{if defined(nt_mpi) then ("-ntmpi " +  '"' + nt_mpi + '"') else ""} \
      ~{if defined(gpu_id) then ("-gpu_id " +  '"' + gpu_id + '"') else ""}
  >>>
  parameter_meta {
    input_tpr: "Input tpr"
    time: "Extend simulation time, default=10"
    dt: "integration time step, default=0.005"
    nt: "Total number of threads to start, default=0"
    nt_mpi: "Number of thread-MPI threads to start, default=0"
    gpu_id: "List of GPU device id-s to use, default=\"\""
  }
}