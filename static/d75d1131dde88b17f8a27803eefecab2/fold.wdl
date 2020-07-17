version 1.0

task Fold {
  input {
    String? bytes
    String? spaces
    String? width
    String? option
  }
  command <<<
    fold \
      ~{option} \
      ~{if defined(bytes) then ("--bytes " +  '"' + bytes + '"') else ""} \
      ~{if defined(spaces) then ("--spaces " +  '"' + spaces + '"') else ""} \
      ~{if defined(width) then ("--width " +  '"' + width + '"') else ""}
  >>>
  parameter_meta {
    bytes: "bytes rather than columns"
    spaces: "at spaces"
    width: "use WIDTH columns instead of 80"
    option: ""
  }
}