version 1.0

task OmeroConfigList {
  input {
    Boolean? show_password
  }
  command <<<
    omero config list \
      ~{true="--show-password" false="" show_password}
  >>>
  parameter_meta {
    show_password: "Show values of sensitive keys (passwords, tokens, etc.) in the current profile"
  }
}