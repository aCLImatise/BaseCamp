version 1.0

task SentieonBwaShm {
  input {
    Boolean? destroy_indices_shared
    Boolean? list_names_indices
    File? temporary_file_reduce
    Int? number_of_threads
    String bwa
    String shm
  }
  command <<<
    sentieon-bwa shm \
      ~{bwa} \
      ~{shm} \
      ~{true="-d" false="" destroy_indices_shared} \
      ~{true="-l" false="" list_names_indices} \
      ~{if defined(temporary_file_reduce) then ("-f " +  '"' + temporary_file_reduce + '"') else ""} \
      ~{if defined(number_of_threads) then ("-t " +  '"' + number_of_threads + '"') else ""}
  >>>
  parameter_meta {
    destroy_indices_shared: "destroy all indices in shared memory"
    list_names_indices: "list names of indices in shared memory"
    temporary_file_reduce: "temporary file to reduce peak memory"
    number_of_threads: "number of threads"
    bwa: ""
    shm: ""
  }
}