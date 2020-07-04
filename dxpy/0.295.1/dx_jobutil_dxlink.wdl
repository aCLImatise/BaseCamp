version 1.0

task DxJobutilDxlink {
  input {
    String data_object_id
  }
  command <<<
    dx-jobutil-dxlink \
      ~{data_object_id}
  >>>
  parameter_meta {
    data_object_id: "Data object ID or \"<Project ID>:<Data object ID>\" to package into a DNAnexus link"
  }
}