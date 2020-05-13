version 1.0

task OmeroConfigList {
  input {
    Boolean showShowPassword
  }
  command <<<
    omero config list \
      ~{true="--show-password" false="" showShowPassword}
  >>>
}