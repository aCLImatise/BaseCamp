version 1.0

task PVst {
  input {
    String? target
  }
  command <<<
    pVst \
      ~{if defined(target) then ("--target " +  '"' + target + '"') else ""}
  >>>
  parameter_meta {
    target: ""
  }
}