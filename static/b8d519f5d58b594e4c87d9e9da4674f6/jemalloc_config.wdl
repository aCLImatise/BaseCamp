version 1.0

task JemallocConfig {
  input {
    Boolean? revision
    Boolean? config
    Boolean? prefix
    Boolean? bindir
    Boolean? datadir
    Boolean? includedir
    Boolean? libdir
    Boolean? mandir
    Boolean? cc
    Boolean? cflags
    Boolean? cppflags
    Boolean? ldflags
    Boolean? libs
  }
  command <<<
    jemalloc-config \
      ~{true="--revision" false="" revision} \
      ~{true="--config" false="" config} \
      ~{true="--prefix" false="" prefix} \
      ~{true="--bindir" false="" bindir} \
      ~{true="--datadir" false="" datadir} \
      ~{true="--includedir" false="" includedir} \
      ~{true="--libdir" false="" libdir} \
      ~{true="--mandir" false="" mandir} \
      ~{true="--cc" false="" cc} \
      ~{true="--cflags" false="" cflags} \
      ~{true="--cppflags" false="" cppflags} \
      ~{true="--ldflags" false="" ldflags} \
      ~{true="--libs" false="" libs}
  >>>
  parameter_meta {
    revision: ": Print shared library revision number."
    config: ": Print configure options used to build jemalloc."
    prefix: ": Print installation directory prefix."
    bindir: ": Print binary installation directory."
    datadir: ": Print data installation directory."
    includedir: ": Print include installation directory."
    libdir: ": Print library installation directory."
    mandir: ": Print manual page installation directory."
    cc: ": Print compiler used to build jemalloc."
    cflags: ": Print compiler flags used to build jemalloc."
    cppflags: ": Print preprocessor flags used to build jemalloc."
    ldflags: ": Print library flags used to build jemalloc."
    libs: ": Print libraries jemalloc was linked against."
  }
}