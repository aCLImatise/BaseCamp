version 1.0

task MegalodonExtrasMergeModifiedBases {
  input {
    Directory? output_megalodon_results_dir
    Int? data_batch_size
    Int? max_processes
    Boolean? single_process
    Int? database_safety
    Directory? overwrite
    String output_dot
    String process_dot
  }
  command <<<
    megalodon_extras merge modified_bases \
      ~{output_dot} \
      ~{process_dot} \
      ~{if defined(output_megalodon_results_dir) then ("--output-megalodon-results-dir " +  '"' + output_megalodon_results_dir + '"') else ""} \
      ~{if defined(data_batch_size) then ("--data-batch-size " +  '"' + data_batch_size + '"') else ""} \
      ~{if defined(max_processes) then ("--max-processes " +  '"' + max_processes + '"') else ""} \
      ~{if (single_process) then "--single-process" else ""} \
      ~{if defined(database_safety) then ("--database-safety " +  '"' + database_safety + '"') else ""} \
      ~{if (overwrite) then "--overwrite" else ""}
  >>>
  parameter_meta {
    output_megalodon_results_dir: "Output directory. Cannot exist before this command.\\nDefault: megalodon_merge_mods_results"
    data_batch_size: "Batch size to insert position and statistics data.\\nDefault: 100000"
    max_processes: "Maximum number of processes to open for reading\\nstatistics. Each process must load all output database\\nin memory indices, and thus may incur high memory\\nusage. Default: 4"
    single_process: "Do not use multiprocessing with one input database per"
    database_safety: "Setting for database performance versus corruption\\nprotection. Options: 0 (DB corruption on application\\ncrash), 1 (DB corruption on system crash), 2 (DB safe\\nmode). Default: 1"
    overwrite: "Overwrite output directory if it exists."
    output_dot: "optional arguments:"
    process_dot: "--force-uint32-pos-index"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_megalodon_results_dir = "${in_output_megalodon_results_dir}"
    Directory out_overwrite = "${in_overwrite}"
  }
}