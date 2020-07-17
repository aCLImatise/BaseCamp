version 1.0

task Undexqv {
  input {
    Boolean? v_ku
  }
  command <<<
    undexqv \
      ~{true="-vkU" false="" v_ku}
  >>>
  parameter_meta {
    v_ku: ""
  }
}