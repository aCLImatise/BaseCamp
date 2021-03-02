version 1.0

task Abyssdida {
  input {
    String? additional_command_line
    Boolean? number_of_threads
    Boolean? path_of_executable
    Boolean? number_ranks_dida
    String? value_set_environment
  }
  command <<<
    abyss_dida \
      ~{if defined(additional_command_line) then ("-d " +  '"' + additional_command_line + '"') else ""} \
      ~{if (number_of_threads) then "-j" else ""} \
      ~{if (path_of_executable) then "-m" else ""} \
      ~{if (number_ranks_dida) then "-n" else ""} \
      ~{if defined(value_set_environment) then ("-x " +  '"' + value_set_environment + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/abyss:2.2.5--ha4ec83a_0"
  }
  parameter_meta {
    additional_command_line: "additional command line opts for DIDA"
    number_of_threads: "number of threads [1]"
    path_of_executable: "path of 'mpirun' executable [mpirun]"
    number_ranks_dida: "number of ranks in DIDA MPI job [3]"
    value_set_environment: "=value  set environment variable for MPI job"
  }
  output {
    File out_stdout = stdout()
  }
}