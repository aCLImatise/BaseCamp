version 1.0

task Mdust {
  input {
    String? w
    String? v
    String? fast_a_file
  }
  command <<<
    mdust \
      ~{fast_a_file} \
      ~{if defined(w) then ("-w " +  '"' + w + '"') else ""} \
      ~{if defined(v) then ("-v " +  '"' + v + '"') else ""}
  >>>
  parameter_meta {
    w: ""
    v: ""
    fast_a_file: ""
  }
}