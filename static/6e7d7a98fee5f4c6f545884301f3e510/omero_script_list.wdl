version 1.0

task OmeroScriptList {
  input {
    String who
  }
  command <<<
    omero script list \
      ~{who}
  >>>
  parameter_meta {
    who: "Who to execute for: user, group, user=1, group=5 (default=official)"
  }
}