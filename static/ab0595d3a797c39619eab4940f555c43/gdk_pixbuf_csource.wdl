version 1.0

task GdkPixbufCsource {
  input {
    Boolean? stream
    Boolean? generate_gdkpixdata_structure
    Boolean? macros
    Boolean? rle
    Boolean? raw
    Boolean? extern
    Boolean? static
    Boolean? decoder
    String? name
    Boolean? build_list
    Boolean? g_fatal_warnings
    String gdk_pixbuf_c_source_three_dot_zero
    String? image
  }
  command <<<
    gdk-pixbuf-csource \
      ~{gdk_pixbuf_c_source_three_dot_zero} \
      ~{image} \
      ~{true="--stream" false="" stream} \
      ~{true="--struct" false="" generate_gdkpixdata_structure} \
      ~{true="--macros" false="" macros} \
      ~{true="--rle" false="" rle} \
      ~{true="--raw" false="" raw} \
      ~{true="--extern" false="" extern} \
      ~{true="--static" false="" static} \
      ~{true="--decoder" false="" decoder} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{true="--build-list" false="" build_list} \
      ~{true="--g-fatal-warnings" false="" g_fatal_warnings}
  >>>
  parameter_meta {
    stream: "generate pixbuf data stream"
    generate_gdkpixdata_structure: "generate GdkPixdata structure"
    macros: "generate image size/pixel macros"
    rle: "use one byte run-length-encoding"
    raw: "provide raw image data copy"
    extern: "generate extern symbols"
    static: "generate static symbols"
    decoder: "provide rle decoder"
    name: "C macro/variable name"
    build_list: "parse (name, image) pairs"
    g_fatal_warnings: "make warnings fatal (abort)"
    gdk_pixbuf_c_source_three_dot_zero: ""
    image: ""
  }
}