version 1.0

task _gdlibConfig {
  input {
    Boolean libdirLibdir
    Boolean includedirIncludedir
    Boolean majorMajorVersion
    Boolean minorMinorVersion
    Boolean revisionRevision
    Boolean ldflagsLdflags
    Boolean libsLibs
    Boolean cflagsCflags
    Boolean includesIncludes
    Boolean featuresFeatures
    Boolean allAll
    String? gdGdLibConfig
  }
  command <<<
    _gdlib-config \
      ~{gdGdLibConfig} \
      ~{true="--libdir" false="" libdirLibdir} \
      ~{true="--includedir" false="" includedirIncludedir} \
      ~{true="--majorversion" false="" majorMajorVersion} \
      ~{true="--minorversion" false="" minorMinorVersion} \
      ~{true="--revision" false="" revisionRevision} \
      ~{true="--ldflags" false="" ldflagsLdflags} \
      ~{true="--libs" false="" libsLibs} \
      ~{true="--cflags" false="" cflagsCflags} \
      ~{true="--includes" false="" includesIncludes} \
      ~{true="--features" false="" featuresFeatures} \
      ~{true="--all" false="" allAll}
  >>>
}