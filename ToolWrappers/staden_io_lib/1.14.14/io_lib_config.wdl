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
  runtime {
    docker: "quay.io/biocontainers/staden_io_lib:1.14.14--h9dace67_0"
  }
  parameter_meta {
    cflags: "C and preprocessor flags (eg -I/foo/include)"
    libs: "Link-line parameters, eg -L/foo/lib -lstaden-read"
  }
  output {
    File out_stdout = stdout()
  }
}