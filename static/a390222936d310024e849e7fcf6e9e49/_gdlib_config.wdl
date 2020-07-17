version 1.0

task _gdlibConfig {
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
    _gdlib-config \
      ~{gd_lib_config} \
      ~{true="--libdir" false="" libdir} \
      ~{true="--includedir" false="" includedir} \
      ~{true="--majorversion" false="" major_version} \
      ~{true="--minorversion" false="" minor_version} \
      ~{true="--revision" false="" revision} \
      ~{true="--ldflags" false="" ldflags} \
      ~{true="--libs" false="" libs} \
      ~{true="--cflags" false="" cflags} \
      ~{true="--includes" false="" includes} \
      ~{true="--features" false="" features} \
      ~{true="--all" false="" all}
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
    features: "# lists features compiled into gd, separated by spaces. # Currently (as of 2.2.5) the optional features # are GD_PNG, GD_JPEG, GD_XPM, GD_FREETYPE, and  # GD_FONTCONFIG. When these features are reported by # --features, it is safe to include calls to the # related functions in your code."
    all: "# print a summary of all GD library configure options"
    gd_lib_config: ""
  }
}