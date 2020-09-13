version 1.0

task Gdlibconfig {
  input {
    Boolean? libdir
    Boolean? includedir
    Boolean? major_version
    Boolean? minor_version
    Boolean? revision
    Boolean? ldflags
    Boolean? libs
    Boolean? cflags
    Boolean? includes
    Boolean? features
    Boolean? all
    String gd_lib_config
  }
  command <<<
    _gdlib_config \
      ~{gd_lib_config} \
      ~{if (libdir) then "--libdir" else ""} \
      ~{if (includedir) then "--includedir" else ""} \
      ~{if (major_version) then "--majorversion" else ""} \
      ~{if (minor_version) then "--minorversion" else ""} \
      ~{if (revision) then "--revision" else ""} \
      ~{if (ldflags) then "--ldflags" else ""} \
      ~{if (libs) then "--libs" else ""} \
      ~{if (cflags) then "--cflags" else ""} \
      ~{if (includes) then "--includes" else ""} \
      ~{if (features) then "--features" else ""} \
      ~{if (all) then "--all" else ""}
  >>>
  parameter_meta {
    libdir: "# directory where GD library is installed"
    includedir: "# directory where GD library headers are installed"
    major_version: "# GD library major version number"
    minor_version: "# GD library minor version number"
    revision: "# GD library revision version number"
    ldflags: "# options required for linking against GD library"
    libs: "# libs required for linking against GD library"
    cflags: "# options required for compiling GD library apps"
    includes: "# same as --cflags"
    features: "# lists features compiled into gd, separated by spaces.\\n# Currently (as of 2.2.5) the optional features\\n# are GD_PNG, GD_JPEG, GD_XPM, GD_FREETYPE, and\\n# GD_FONTCONFIG. When these features are reported by\\n# --features, it is safe to include calls to the\\n# related functions in your code."
    all: "# print a summary of all GD library configure options"
    gd_lib_config: ""
  }
  output {
    File out_stdout = stdout()
  }
}