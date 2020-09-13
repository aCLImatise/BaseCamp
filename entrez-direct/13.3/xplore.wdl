version 1.0

task Xplore {
  input {
    Boolean? link
    Boolean? load
    Boolean? save
    Boolean? search
    Boolean? version
  }
  command <<<
    xplore \
      ~{if (link) then "-link" else ""} \
      ~{if (load) then "-load" else ""} \
      ~{if (save) then "-save" else ""} \
      ~{if (search) then "-search" else ""} \
      ~{if (version) then "-version" else ""}
  >>>
  parameter_meta {
    link: ""
    load: ""
    save: ""
    search: ""
    version: ""
  }
  output {
    File out_stdout = stdout()
  }
}