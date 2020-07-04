version 1.0

task _etandem {
  input {
    Boolean? min_repeat
    Boolean? max_repeat
  }
  command <<<
    _etandem \
      ~{true="-minrepeat" false="" min_repeat} \
      ~{true="-maxrepeat" false="" max_repeat}
  >>>
  parameter_meta {
    min_repeat: "integer    [10] Minimum repeat size (Integer, 2 or higher)"
    max_repeat: "integer    [Same as -minrepeat] Maximum repeat size (Integer, same as -minrepeat or higher)"
  }
}