version 1.0

task NebulizerCreateLibraryFolderGALAXY {
  input {
    String nebulizer
    String create_library_folder
    String galaxy
    File path
  }
  command <<<
    nebulizer create_library_folder GALAXY_ \
      ~{nebulizer} \
      ~{create_library_folder} \
      ~{galaxy} \
      ~{path}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    nebulizer: ""
    create_library_folder: ""
    galaxy: ""
    path: ""
  }
  output {
    File out_stdout = stdout()
  }
}