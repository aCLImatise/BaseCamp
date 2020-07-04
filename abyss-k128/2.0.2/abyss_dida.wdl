version 1.0

task AbyssDida {
  input {
    String? additional_command_line
    Boolean? number_of_threads
    Boolean? path_of_executable
    Boolean? number_ranks_dida
    String? value_set_variable
  }
  command <<<
    abyss-dida \
      ~{if defined(additional_command_line) then ("-d " +  '"' + additional_command_line + '"') else ""} \
      ~{true="-j" false="" number_of_threads} \
      ~{true="-m" false="" path_of_executable} \
      ~{true="-n" false="" number_ranks_dida} \
      ~{if defined(value_set_variable) then ("-x " +  '"' + value_set_variable + '"') else ""}
  >>>
  parameter_meta {
    additional_command_line: "additional command line opts for DIDA"
    number_of_threads: "number of threads [1]"
    path_of_executable: "path of 'mpirun' executable [mpirun]"
    number_ranks_dida: "number of ranks in DIDA MPI job [3]"
    value_set_variable: "=value  set environment variable for MPI job"
  }
}