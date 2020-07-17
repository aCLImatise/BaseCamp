version 1.0

task OmeroAdminDeploy {
  input {
    File file
    String targets
  }
  command <<<
    omero admin deploy \
      ~{file} \
      ~{targets}
  >>>
  parameter_meta {
    file: "Application descriptor. If not provided, a default will be used"
    targets: "Targets within the application descriptor which  should  be activated. Common values are: \"debug\", \"trace\" "
  }
}