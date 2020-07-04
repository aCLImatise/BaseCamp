version 1.0

task GraphicsMagickConfig {
  input {
    Boolean? cflags
    Boolean? cppflags
    Boolean? exec_prefix
    Boolean? ldflags
    Boolean? libs
    Boolean? prefix
  }
  command <<<
    GraphicsMagick-config \
      ~{true="--cflags" false="" cflags} \
      ~{true="--cppflags" false="" cppflags} \
      ~{true="--exec-prefix" false="" exec_prefix} \
      ~{true="--ldflags" false="" ldflags} \
      ~{true="--libs" false="" libs} \
      ~{true="--prefix" false="" prefix}
  >>>
  parameter_meta {
    cflags: ""
    cppflags: ""
    exec_prefix: ""
    ldflags: ""
    libs: ""
    prefix: ""
  }
}