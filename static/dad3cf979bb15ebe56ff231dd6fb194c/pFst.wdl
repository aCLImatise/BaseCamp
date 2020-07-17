version 1.0

task PFst {
  input {
    String? target
  }
  command <<<
    pFst \
      ~{if defined(target) then ("--target " +  '"' + target + '"') else ""}
  >>>
  parameter_meta {
    target: ""
  }
}