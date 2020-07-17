version 1.0

task GdkPixbufPixdata {
  input {
    Boolean? g_fatal_warnings
    String gdk_pixbuf_pix_data_three_dot_zero
    String? input_file
    String? output_file
  }
  command <<<
    gdk-pixbuf-pixdata \
      ~{gdk_pixbuf_pix_data_three_dot_zero} \
      ~{input_file} \
      ~{output_file} \
      ~{true="--g-fatal-warnings" false="" g_fatal_warnings}
  >>>
  parameter_meta {
    g_fatal_warnings: "make warnings fatal (abort)"
    gdk_pixbuf_pix_data_three_dot_zero: ""
    input_file: ""
    output_file: ""
  }
}