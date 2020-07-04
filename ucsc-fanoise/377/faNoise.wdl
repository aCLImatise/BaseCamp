version 1.0

task FaNoise {
  input {
    Boolean? upper
    String in_name
    String out_name
    String transition_ppt
    String transversion_ppt
    String insert_ppt
    String delete_ppt
    String chimera_ppt
  }
  command <<<
    faNoise \
      ~{in_name} \
      ~{out_name} \
      ~{transition_ppt} \
      ~{transversion_ppt} \
      ~{insert_ppt} \
      ~{delete_ppt} \
      ~{chimera_ppt} \
      ~{true="-upper" false="" upper}
  >>>
  parameter_meta {
    upper: "- output in upper case"
    in_name: ""
    out_name: ""
    transition_ppt: ""
    transversion_ppt: ""
    insert_ppt: ""
    delete_ppt: ""
    chimera_ppt: ""
  }
}