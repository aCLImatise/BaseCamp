version 1.0

task OvStoreSorter {
  input {
    String? path_overlap_store
    String? path_sequence_store
    String? path_ovstoreconfig_file
    String? slice_process_n
    String? maximum_memory_use
    Boolean? delete_early
    Boolean? delete_late
    Boolean? force_recompute_exists
    String? opts
  }
  command <<<
    ovStoreSorter \
      ~{opts} \
      ~{if defined(path_overlap_store) then ("-O " +  '"' + path_overlap_store + '"') else ""} \
      ~{if defined(path_sequence_store) then ("-S " +  '"' + path_sequence_store + '"') else ""} \
      ~{if defined(path_ovstoreconfig_file) then ("-C " +  '"' + path_ovstoreconfig_file + '"') else ""} \
      ~{if defined(slice_process_n) then ("-s " +  '"' + slice_process_n + '"') else ""} \
      ~{if defined(maximum_memory_use) then ("-M " +  '"' + maximum_memory_use + '"') else ""} \
      ~{true="-deleteearly" false="" delete_early} \
      ~{true="-deletelate" false="" delete_late} \
      ~{true="-f" false="" force_recompute_exists}
  >>>
  parameter_meta {
    path_overlap_store: "path to overlap store to create"
    path_sequence_store: "path to sequence store"
    path_ovstoreconfig_file: "path to ovStoreConfig configuration file"
    slice_process_n: "slice to process (1 ... N)"
    maximum_memory_use: "maximum memory to use, in gigabytes"
    delete_early: "remove intermediates as soon as possible (unsafe)"
    delete_late: "remove intermediates when outputs exist (safe)"
    force_recompute_exists: "force a recompute, even if the output exists or appears in progress"
    opts: ""
  }
}