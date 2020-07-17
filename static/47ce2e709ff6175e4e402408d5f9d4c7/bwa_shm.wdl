version 1.0

task BwaShm {
  input {
    Boolean? destroy_indices_shared
    Boolean? list_names_indices
    File? temporary_file_reduce
  }
  command <<<
    bwa shm \
      ~{true="-d" false="" destroy_indices_shared} \
      ~{true="-l" false="" list_names_indices} \
      ~{if defined(temporary_file_reduce) then ("-f " +  '"' + temporary_file_reduce + '"') else ""}
  >>>
  parameter_meta {
    destroy_indices_shared: "destroy all indices in shared memory"
    list_names_indices: "list names of indices in shared memory"
    temporary_file_reduce: "temporary file to reduce peak memory"
  }
}