version 1.0

task Extendpy {
  input {
    String? input_tpr
    Int? time
    Float? dt
    Int? nt
    Int? nt_mpi
    String? gpu_id
  }
  command <<<
    extend_py \
      ~{if defined(input_tpr) then ("-s " +  '"' + input_tpr + '"') else ""} \
      ~{if defined(time) then ("-time " +  '"' + time + '"') else ""} \
      ~{if defined(dt) then ("-dt " +  '"' + dt + '"') else ""} \
      ~{if defined(nt) then ("-nt " +  '"' + nt + '"') else ""} \
      ~{if defined(nt_mpi) then ("-ntmpi " +  '"' + nt_mpi + '"') else ""} \
      ~{if defined(gpu_id) then ("-gpu_id " +  '"' + gpu_id + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/gromacs_py:1.2.1--py_0"
  }
  parameter_meta {
    input_tpr: "Input tpr"
    time: "Extend simulation time, default=10"
    dt: "integration time step, default=0.005"
    nt: "Total number of threads to start, default=0"
    nt_mpi: "Number of thread-MPI threads to start, default=0"
    gpu_id: "List of GPU device id-s to use, default=\\\"\\\""
  }
  output {
    File out_stdout = stdout()
  }
}