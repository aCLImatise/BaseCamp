version 1.0

task NsegFileWindow {
  input {
    String lo_cut
    String hi_cut
  }
  command <<<
    nseg file window \
      ~{lo_cut} \
      ~{hi_cut}
  >>>
  parameter_meta {
    lo_cut: ""
    hi_cut: ""
  }
}