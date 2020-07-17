version 1.0

task NsegFileLocut {
  input {
    String ns_eg
    File file
    String window
    String lo_cut
    String hi_cut
  }
  command <<<
    nseg file locut \
      ~{ns_eg} \
      ~{file} \
      ~{window} \
      ~{lo_cut} \
      ~{hi_cut}
  >>>
  parameter_meta {
    ns_eg: ""
    file: ""
    window: ""
    lo_cut: ""
    hi_cut: ""
  }
}