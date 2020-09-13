version 1.0

task SpadesbwaShm {
  input {
    Boolean? destroy_indices_shared
    Boolean? list_names_indices
    File? temporary_file_reduce
    String bwa
    String shm
  }
  command <<<
    spades_bwa shm \
      ~{bwa} \
      ~{shm} \
      ~{if (destroy_indices_shared) then "-d" else ""} \
      ~{if (list_names_indices) then "-l" else ""} \
      ~{if defined(temporary_file_reduce) then ("-f " +  '"' + temporary_file_reduce + '"') else ""}
  >>>
  parameter_meta {
    destroy_indices_shared: "destroy all indices in shared memory"
    list_names_indices: "list names of indices in shared memory"
    temporary_file_reduce: "temporary file to reduce peak memory"
    bwa: ""
    shm: ""
  }
  output {
    File out_stdout = stdout()
  }
}