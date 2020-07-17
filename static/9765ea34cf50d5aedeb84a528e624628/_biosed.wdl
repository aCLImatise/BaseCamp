version 1.0

task _biosed {
  input {
    Boolean? target_region
  }
  command <<<
    _biosed \
      ~{true="-targetregion" false="" target_region}
  >>>
  parameter_meta {
    target_region: "string     [N] Sequence section to match (Any string)"
  }
}