version 1.0

task Whichdb {
  input {
    Boolean? get
    Boolean? show_all
  }
  command <<<
    whichdb \
      ~{if (get) then "-get" else ""} \
      ~{if (show_all) then "-showall" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    get: "toggle     [N] Retrieve sequences"
    show_all: "boolean    [N] Show failed attempts"
  }
  output {
    File out_stdout = stdout()
  }
}