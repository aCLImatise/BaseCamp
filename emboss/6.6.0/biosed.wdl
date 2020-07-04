version 1.0

task Biosed {
  input {
    Boolean? target_region
  }
  command <<<
    biosed \
      ~{true="-targetregion" false="" target_region}
  >>>
  parameter_meta {
    target_region: "string     [N] Sequence section to match (Any string)"
  }
}