version 1.0

task Undexta {
  input {
    Boolean? v_ku
  }
  command <<<
    undexta \
      ~{true="-vkU" false="" v_ku}
  >>>
  parameter_meta {
    v_ku: ""
  }
}