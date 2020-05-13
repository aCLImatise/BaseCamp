version 1.0

task Zoom2sam.pl {
  input {
    Boolean pP
    String? readReadLen
    String? alnAlnZoom
  }
  command <<<
    zoom2sam.pl \
      ~{readReadLen} \
      ~{true="-p" false="" pP} \
      ~{alnAlnZoom}
  >>>
}