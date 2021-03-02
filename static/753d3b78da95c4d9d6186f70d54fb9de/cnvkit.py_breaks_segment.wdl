version 1.0

task CnvkitpyBreaksSegment {
  input {
    File? o
    Int? m
    String cnv_kit_do_tpy
    String breaks
    File filename
    String segment
  }
  command <<<
    cnvkit_py breaks segment \
      ~{cnv_kit_do_tpy} \
      ~{breaks} \
      ~{filename} \
      ~{segment} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(m) then ("-m " +  '"' + m + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    o: ""
    m: ""
    cnv_kit_do_tpy: ""
    breaks: ""
    filename: ""
    segment: ""
  }
  output {
    File out_stdout = stdout()
  }
}