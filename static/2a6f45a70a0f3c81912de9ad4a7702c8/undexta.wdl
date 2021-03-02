version 1.0

task Undexta {
  input {
    Boolean? v_ku
  }
  command <<<
    undexta \
      ~{if (v_ku) then "-vkU" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    v_ku: ""
  }
  output {
    File out_stdout = stdout()
  }
}