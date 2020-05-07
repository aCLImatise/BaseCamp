version 1.0

task GdkPixbufPixdata {
  input {
    Boolean gGFatalWarnings
  }
  command <<<
    gdk-pixbuf-pixdata \
      ~{true="--g-fatal-warnings" false="" gGFatalWarnings}
  >>>
}