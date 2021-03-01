version 1.0

task ValidateManifest {
  input {
    String? enc_val_data
    String? dir
    String validate_manifest
  }
  command <<<
    validateManifest \
      ~{validate_manifest} \
      ~{if defined(enc_val_data) then ("-encValData " +  '"' + enc_val_data + '"') else ""} \
      ~{if defined(dir) then ("-dir " +  '"' + dir + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    enc_val_data: ", relative to workingDir, defaults to encValData."
    dir: ""
    validate_manifest: "-dir=workingDir, defaults to the current directory."
  }
  output {
    File out_stdout = stdout()
  }
}