version 1.0

task BFst {
  input {
    String? target
  }
  command <<<
    bFst \
      ~{if defined(target) then ("--target " +  '"' + target + '"') else ""}
  >>>
  parameter_meta {
    target: ""
  }
}