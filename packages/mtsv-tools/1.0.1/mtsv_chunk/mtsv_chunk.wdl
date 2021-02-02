version 1.0

task Mtsvchunk {
  input {
    Boolean? include_flag_trigger
    File? paths_vedro_files
    File? folder_path_write
    Int? gb
  }
  command <<<
    mtsv_chunk \
      ~{if (include_flag_trigger) then "-v" else ""} \
      ~{if defined(paths_vedro_files) then ("--input " +  '"' + paths_vedro_files + '"') else ""} \
      ~{if defined(folder_path_write) then ("--output " +  '"' + folder_path_write + '"') else ""} \
      ~{if defined(gb) then ("--gb " +  '"' + gb + '"') else ""}
  >>>
  parameter_meta {
    include_flag_trigger: "Include this flag to trigger debug-level logging."
    paths_vedro_files: "Path(s) to vedro results files to collapse"
    folder_path_write: "Folder path to write split outupt files to."
    gb: "Chunk size (in gigabytes). [default: 1.0]"
  }
  output {
    File out_stdout = stdout()
  }
}