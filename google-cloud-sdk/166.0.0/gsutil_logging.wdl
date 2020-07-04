version 1.0

task GsutilLogging {
  input {
    String? b
    String? o
    String set
    String on
    String url_dot_dot_dot
  }
  command <<<
    gsutil logging \
      ~{set} \
      ~{on} \
      ~{url_dot_dot_dot} \
      ~{if defined(b) then ("-b " +  '"' + b + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  parameter_meta {
    b: ""
    o: ""
    set: ""
    on: ""
    url_dot_dot_dot: ""
  }
}