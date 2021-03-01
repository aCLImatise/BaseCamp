version 1.0

task Biosed {
  input {
    Boolean? target_region
    Boolean? position
    Boolean? delete
  }
  command <<<
    biosed \
      ~{if (target_region) then "-targetregion" else ""} \
      ~{if (position) then "-position" else ""} \
      ~{if (delete) then "-delete" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    target_region: "string     [N] Sequence section to match (Any string)"
    position: "integer    [0] Sequence position to match (Integer 0 or\\nmore)"
    delete: "toggle     [N] Delete the target sequence sections"
  }
  output {
    File out_stdout = stdout()
  }
}