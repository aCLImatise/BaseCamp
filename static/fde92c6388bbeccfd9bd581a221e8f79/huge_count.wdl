version 1.0

task HugeCount.pl {
  input {
    Boolean? token_list
    String destination
    String? source
  }
  command <<<
    huge-count.pl \
      ~{destination} \
      ~{source} \
      ~{true="--tokenlist" false="" token_list}
  >>>
  parameter_meta {
    token_list: ""
    destination: ""
    source: ""
  }
}