version 1.0

task IoLibconfig {
  input {
    Boolean? cflags
    Boolean? libs
  }
  command <<<
    io_lib_config \
      ~{if (cflags) then "--cflags" else ""} \
      ~{if (libs) then "--libs" else ""}
  >>>
  parameter_meta {
    cflags: "C and preprocessor flags (eg -I/foo/include)"
    libs: "Link-line parameters, eg -L/foo/lib -lstaden-read"
  }
  output {
    File out_stdout = stdout()
  }
}