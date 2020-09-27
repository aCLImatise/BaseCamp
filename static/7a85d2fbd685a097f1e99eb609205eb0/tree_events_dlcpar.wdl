version 1.0

task Treeeventsdlcpar {
  input {
    Boolean? explicit
  }
  command <<<
    tree_events_dlcpar \
      ~{if (explicit) then "--explicit" else ""}
  >>>
  parameter_meta {
    explicit: "set to ignore extra lineages at implied speciation"
  }
  output {
    File out_stdout = stdout()
  }
}