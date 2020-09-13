version 1.0

task Splitter {
  input {
    Boolean? size
    Boolean? overlap
    Boolean? feature
    Boolean? add_overlap
  }
  command <<<
    splitter \
      ~{if (size) then "-size" else ""} \
      ~{if (overlap) then "-overlap" else ""} \
      ~{if (feature) then "-feature" else ""} \
      ~{if (add_overlap) then "-addoverlap" else ""}
  >>>
  parameter_meta {
    size: "integer    [10000] Size to split at (Integer 1 or more)"
    overlap: "integer    [0] Overlap between split sequences (Integer\\n0 or more)"
    feature: "boolean    [N] Use feature information"
    add_overlap: "boolean    [N] Include overlap in output sequence size"
  }
  output {
    File out_stdout = stdout()
  }
}