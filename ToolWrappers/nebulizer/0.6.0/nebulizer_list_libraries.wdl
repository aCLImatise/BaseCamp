version 1.0

task NebulizerListLibraries {
  input {
    Boolean? use_long_format
    Boolean? show_id
    String datasets_dot
  }
  command <<<
    nebulizer list_libraries \
      ~{datasets_dot} \
      ~{if (use_long_format) then "-l" else ""} \
      ~{if (show_id) then "--show_id" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    use_long_format: "use a long listing format that includes descriptions, file sizes,\\ndbkeys and paths)"
    show_id: "include internal Galaxy IDs for data libraries, folders and"
    datasets_dot: "--help     Show this message and exit."
  }
  output {
    File out_stdout = stdout()
  }
}