version 1.0

task VtoolsShowItems {
  input {
    String? v
    String? l
    String v_tools
    String show
  }
  command <<<
    vtools show items \
      ~{v_tools} \
      ~{show} \
      ~{if defined(v) then ("-v " +  '"' + v + '"') else ""} \
      ~{if defined(l) then ("-l " +  '"' + l + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    v: ""
    l: ""
    v_tools: ""
    show: ""
  }
  output {
    File out_stdout = stdout()
  }
}