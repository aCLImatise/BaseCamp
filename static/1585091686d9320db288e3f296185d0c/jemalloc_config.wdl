version 1.0

task JemallocConfig {
  input {
    Boolean revisionRevision
    Boolean configConfig
    Boolean prefixPrefix
    Boolean bindirBindir
    Boolean datadirDatadir
    Boolean includedirIncludedir
    Boolean libdirLibdir
    Boolean mandirMandir
    Boolean ccCc
    Boolean cflagsCflags
    Boolean cppflagsCppflags
    Boolean ldflagsLdflags
    Boolean libsLibs
  }
  command <<<
    jemalloc-config \
      ~{true="--revision" false="" revisionRevision} \
      ~{true="--config" false="" configConfig} \
      ~{true="--prefix" false="" prefixPrefix} \
      ~{true="--bindir" false="" bindirBindir} \
      ~{true="--datadir" false="" datadirDatadir} \
      ~{true="--includedir" false="" includedirIncludedir} \
      ~{true="--libdir" false="" libdirLibdir} \
      ~{true="--mandir" false="" mandirMandir} \
      ~{true="--cc" false="" ccCc} \
      ~{true="--cflags" false="" cflagsCflags} \
      ~{true="--cppflags" false="" cppflagsCppflags} \
      ~{true="--ldflags" false="" ldflagsLdflags} \
      ~{true="--libs" false="" libsLibs}
  >>>
}