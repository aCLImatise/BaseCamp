version 1.0

task Sketchblacklist2.sh {
  input {
    String sketch_blacklist_dots_h
    String ref
  }
  command <<<
    sketchblacklist2.sh \
      ~{sketch_blacklist_dots_h} \
      ~{ref}
  >>>
  parameter_meta {
    sketch_blacklist_dots_h: ""
    ref: ""
  }
}