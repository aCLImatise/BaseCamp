version 1.0

task BoltVersion {
  input {
    String genie
    String version
    String? flags
  }
  command <<<
    bolt version \
      ~{genie} \
      ~{version} \
      ~{flags}
  >>>
  parameter_meta {
    genie: ""
    version: ""
    flags: ""
  }
}