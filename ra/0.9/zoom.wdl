version 1.0

task Zoom {
  input {
    Int? root
    Int? depth
    String? depot
  }
  command <<<
    zoom \
      ~{if defined(root) then ("--root " +  '"' + root + '"') else ""} \
      ~{if defined(depth) then ("--depth " +  '"' + depth + '"') else ""} \
      ~{if defined(depot) then ("--depot " +  '"' + depot + '"') else ""}
  >>>
  parameter_meta {
    root: ""
    depth: ""
    depot: ""
  }
}