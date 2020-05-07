version 1.0

task OmeroConfigGet {
  input {
    Boolean showShowPassword
    String? keyKey
  }
  command <<<
    omero config get \
      ~{keyKey} \
      ~{true="--show-password" false="" showShowPassword}
  >>>
}