version 1.0

task Weeder2 {
  input {
    String? f
  }
  command <<<
    weeder2 \
      ~{if defined(f) then ("-f " +  '"' + f + '"') else ""}
  >>>
  parameter_meta {
    f: ""
  }
}