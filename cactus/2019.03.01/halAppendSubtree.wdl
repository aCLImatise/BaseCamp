version 1.0

task HalAppendSubtree {
  input {
    String main_file
    String append_file
    String parent_name
    String root_name
  }
  command <<<
    halAppendSubtree \
      ~{main_file} \
      ~{append_file} \
      ~{parent_name} \
      ~{root_name}
  >>>
  parameter_meta {
    main_file: ""
    append_file: ""
    parent_name: ""
    root_name: ""
  }
}