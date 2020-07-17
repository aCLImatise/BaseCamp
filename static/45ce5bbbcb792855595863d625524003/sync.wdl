version 1.0

task Sync {
  input {
    Boolean? data
    Boolean? file_system
    String? option
    File? file
  }
  command <<<
    sync \
      ~{option} \
      ~{file} \
      ~{true="--data" false="" data} \
      ~{true="--file-system" false="" file_system}
  >>>
  parameter_meta {
    data: "sync only file data, no unneeded metadata"
    file_system: "sync the file systems that contain the files"
    option: ""
    file: ""
  }
}