version 1.0

task Dextract {
  input {
    Boolean? o
    Boolean? v_faq
    File? path
  }
  command <<<
    dextract \
      ~{path} \
      ~{if (o) then "-o" else ""} \
      ~{if (v_faq) then "-vfaq" else ""}
  >>>
  parameter_meta {
    o: ""
    v_faq: ""
    path: ""
  }
  output {
    File out_stdout = stdout()
  }
}