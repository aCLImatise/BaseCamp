version 1.0

task OmeroConfigGet {
  input {
    Boolean? show_password
    String key
  }
  command <<<
    omero config get \
      ~{key} \
      ~{true="--show-password" false="" show_password}
  >>>
  parameter_meta {
    show_password: "Show values of sensitive keys (passwords, tokens, etc.) in the current profile"
    key: "Names of keys in the current profile"
  }
}