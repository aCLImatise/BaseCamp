version 1.0

task Whichdb {
  input {
    Boolean? get
    Boolean? show_all
  }
  command <<<
    _whichdb \
      ~{if (get) then "-get" else ""} \
      ~{if (show_all) then "-showall" else ""}
  >>>
  parameter_meta {
    get: "toggle     [N] Retrieve sequences"
    show_all: "boolean    [N] Show failed attempts"
  }
  output {
    File out_stdout = stdout()
  }
}