version 1.0

task Undexqv {
  input {
    Boolean? v_ku
  }
  command <<<
    undexqv \
      ~{if (v_ku) then "-vkU" else ""}
  >>>
  parameter_meta {
    v_ku: ""
  }
  output {
    File out_stdout = stdout()
  }
}