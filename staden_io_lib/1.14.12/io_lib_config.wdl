version 1.0

task IoLibConfig {
  input {
    Boolean? cflags
    Boolean? libs
    String? option
  }
  command <<<
    io_lib-config \
      ~{option} \
      ~{true="--cflags" false="" cflags} \
      ~{true="--libs" false="" libs}
  >>>
  parameter_meta {
    cflags: "C and preprocessor flags (eg -I/foo/include)"
    libs: "Link-line parameters, eg -L/foo/lib -lstaden-read"
    option: ""
  }
}