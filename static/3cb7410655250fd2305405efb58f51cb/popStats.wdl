version 1.0

task PopStats {
  input {
    String? type
    String? target
    String pop_stat
  }
  command <<<
    popStats \
      ~{pop_stat} \
      ~{if defined(type) then ("--type " +  '"' + type + '"') else ""} \
      ~{if defined(target) then ("--target " +  '"' + target + '"') else ""}
  >>>
  parameter_meta {
    type: ""
    target: ""
    pop_stat: ""
  }
}