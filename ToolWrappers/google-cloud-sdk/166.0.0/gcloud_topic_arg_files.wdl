version 1.0

task GcloudTopicArgfiles {
  input {
    Int? device_ids
    String composition
    String nesting_dot
    File file_dot
  }
  command <<<
    gcloud topic arg_files \
      ~{composition} \
      ~{nesting_dot} \
      ~{file_dot} \
      ~{if defined(device_ids) then ("--device-ids " +  '"' + device_ids + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    device_ids: ",htc_m8,g3"
    composition: "A special include: [ARG_GROUP1, ...] syntax allows merging or composition"
    nesting_dot: "Precedence"
    file_dot: "Any argument defined directly within a group will have higher precedence"
  }
  output {
    File out_stdout = stdout()
  }
}