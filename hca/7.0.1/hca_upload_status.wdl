version 1.0

task HcaUploadStatus {
  input {
    String? env
    String? uuid
    File filename
  }
  command <<<
    hca upload status \
      ~{filename} \
      ~{if defined(env) then ("--env " +  '"' + env + '"') else ""} \
      ~{if defined(uuid) then ("--uuid " +  '"' + uuid + '"') else ""}
  >>>
  parameter_meta {
    env: "Environment the upload area was created in (default is based on currently selected upload area)"
    uuid: "Full UUID of an upload area (default is based on currently selected upload area)"
    filename: "File name"
  }
}