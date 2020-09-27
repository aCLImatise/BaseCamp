version 1.0

task BarcodeFilterpy {
  input {
    String? q
    String? m
    String? i
  }
  command <<<
    barcode_filter_py \
      ~{if defined(q) then ("-q " +  '"' + q + '"') else ""} \
      ~{if defined(m) then ("-m " +  '"' + m + '"') else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
  parameter_meta {
    q: ""
    m: ""
    i: ""
  }
  output {
    File out_stdout = stdout()
  }
}