version 1.0

task ParsecToolsShowTool {
  input {
    Boolean? io_details
    Boolean? link_details
    String tool_id
  }
  command <<<
    parsec tools show_tool \
      ~{tool_id} \
      ~{if (io_details) then "--io_details" else ""} \
      ~{if (link_details) then "--link_details" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0"
  }
  parameter_meta {
    io_details: "whether to get also input and output details"
    link_details: "whether to get also link details"
    tool_id: ""
  }
  output {
    File out_stdout = stdout()
  }
}