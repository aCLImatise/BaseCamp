version 1.0

task IoLibConfig {
  input {
    Boolean cflagsCflags
    Boolean libsLibs
    String? optionOption
  }
  command <<<
    io_lib-config \
      ~{optionOption} \
      ~{true="--cflags" false="" cflagsCflags} \
      ~{true="--libs" false="" libsLibs}
  >>>
}