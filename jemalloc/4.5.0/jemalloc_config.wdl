version 1.0

task Jemallocconfig {
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
    jemalloc_config \
      ~{if (revision) then "--revision" else ""} \
      ~{if (config) then "--config" else ""} \
      ~{if (prefix) then "--prefix" else ""} \
      ~{if (bindir) then "--bindir" else ""} \
      ~{if (datadir) then "--datadir" else ""} \
      ~{if (includedir) then "--includedir" else ""} \
      ~{if (libdir) then "--libdir" else ""} \
      ~{if (mandir) then "--mandir" else ""} \
      ~{if (cc) then "--cc" else ""} \
      ~{if (cflags) then "--cflags" else ""} \
      ~{if (cppflags) then "--cppflags" else ""} \
      ~{if (ldflags) then "--ldflags" else ""} \
      ~{if (libs) then "--libs" else ""}
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
  output {
    File out_stdout = stdout()
  }
}