version 1.0

task GdkPixbufCsource {
  input {
    Boolean streamStream
    Boolean structStruct
    Boolean macrosMacros
    Boolean rleRle
    Boolean rawRaw
    Boolean externExtern
    Boolean staticStatic
    Boolean decoderDecoder
    String nameName
    Boolean buildBuildList
    Boolean gGFatalWarnings
  }
  command <<<
    gdk-pixbuf-csource \
      ~{true="--stream" false="" streamStream} \
      ~{true="--struct" false="" structStruct} \
      ~{true="--macros" false="" macrosMacros} \
      ~{true="--rle" false="" rleRle} \
      ~{true="--raw" false="" rawRaw} \
      ~{true="--extern" false="" externExtern} \
      ~{true="--static" false="" staticStatic} \
      ~{true="--decoder" false="" decoderDecoder} \
      ~{if defined(nameName) then ("--name " +  '"' + nameName + '"') else ""} \
      ~{true="--build-list" false="" buildBuildList} \
      ~{true="--g-fatal-warnings" false="" gGFatalWarnings}
  >>>
}