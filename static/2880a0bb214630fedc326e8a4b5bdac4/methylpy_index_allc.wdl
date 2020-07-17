version 1.0

task MethylpyIndexAllc {
  input {
    Array[String] all_c_files
    String? num_procs
    String? re_index
  }
  command <<<
    methylpy index-allc \
      ~{if defined(all_c_files) then ("--allc-files " +  '"' + all_c_files + '"') else ""} \
      ~{if defined(num_procs) then ("--num-procs " +  '"' + num_procs + '"') else ""} \
      ~{if defined(re_index) then ("--reindex " +  '"' + re_index + '"') else ""}
  >>>
  parameter_meta {
    all_c_files: "List of allc files to index. (default: None)"
    num_procs: "Number of processors to use (default: 1)"
    re_index: "Boolean indicating whether to index allc files whose index files already exist. (default: True)"
  }
}