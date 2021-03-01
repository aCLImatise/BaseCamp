version 1.0

task Mtsvcollapse {
  input {
    Boolean? include_flag_trigger
    File? path_write_file
    String? flags
    String files
  }
  command <<<
    mtsv_collapse \
      ~{flags} \
      ~{files} \
      ~{if (include_flag_trigger) then "-v" else ""} \
      ~{if defined(path_write_file) then ("--output " +  '"' + path_write_file + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    include_flag_trigger: "Include this flag to trigger debug-level logging."
    path_write_file: "Path to write combined outupt file to."
    flags: ""
    files: ""
  }
  output {
    File out_stdout = stdout()
  }
}