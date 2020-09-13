version 1.0

task GetCalledRegions {
  input {
    String gvc_f
    String called_dot_bed
  }
  command <<<
    get_called_regions \
      ~{gvc_f} \
      ~{called_dot_bed}
  >>>
  parameter_meta {
    gvc_f: ""
    called_dot_bed: ""
  }
  output {
    File out_stdout = stdout()
  }
}