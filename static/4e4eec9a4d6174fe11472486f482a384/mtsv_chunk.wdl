version 1.0

task MtsvChunk {
  input {
    Boolean? include_flag_trigger
    String? paths_vedro_results
    String? folder_path_write
    Int? gb
  }
  command <<<
    mtsv-chunk \
      ~{true="-v" false="" include_flag_trigger} \
      ~{if defined(paths_vedro_results) then ("--input " +  '"' + paths_vedro_results + '"') else ""} \
      ~{if defined(folder_path_write) then ("--output " +  '"' + folder_path_write + '"') else ""} \
      ~{if defined(gb) then ("--gb " +  '"' + gb + '"') else ""}
  >>>
  parameter_meta {
    include_flag_trigger: "Include this flag to trigger debug-level logging."
    paths_vedro_results: "Path(s) to vedro results files to collapse"
    folder_path_write: "Folder path to write split outupt files to."
    gb: "Chunk size (in gigabytes). [default: 1.0]"
  }
}