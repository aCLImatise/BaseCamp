version 1.0

task Crt {
  input {
    Boolean? disable_at_files
    Boolean? enable_preview
    String java
    String main_class
    String? args_dot_dot_dot
  }
  command <<<
    crt \
      ~{java} \
      ~{main_class} \
      ~{args_dot_dot_dot} \
      ~{true="-disable-@files" false="" disable_at_files} \
      ~{true="--enable-preview" false="" enable_preview}
  >>>
  parameter_meta {
    disable_at_files: "prevent further argument file expansion"
    enable_preview: "allow classes to depend on preview features of this release"
    java: ""
    main_class: ""
    args_dot_dot_dot: ""
  }
}