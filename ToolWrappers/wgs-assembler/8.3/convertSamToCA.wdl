version 1.0

task ConvertSamToCA {
  input {
    File sam_file
    String eid_to_iid_mapping
    String? iid
    String? to
    Int? length
    String? mapping
  }
  command <<<
    convertSamToCA \
      ~{sam_file} \
      ~{eid_to_iid_mapping} \
      ~{iid} \
      ~{to} \
      ~{length} \
      ~{mapping}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    sam_file: ""
    eid_to_iid_mapping: ""
    iid: ""
    to: ""
    length: ""
    mapping: ""
  }
  output {
    File out_stdout = stdout()
  }
}