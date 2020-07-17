version 1.0

task WcFst {
  input {
    String? target
  }
  command <<<
    wcFst \
      ~{if defined(target) then ("--target " +  '"' + target + '"') else ""}
  >>>
  parameter_meta {
    target: ""
  }
}