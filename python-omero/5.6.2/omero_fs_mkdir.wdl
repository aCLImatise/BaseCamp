version 1.0

task OmeroFsMkdir {
  input {
    Boolean? parents
    String new_dir
  }
  command <<<
    omero fs mkdir \
      ~{new_dir} \
      ~{true="--parents" false="" parents}
  >>>
  parameter_meta {
    parents: "ensure whole path exists"
    new_dir: "directory to create in the repository"
  }
}