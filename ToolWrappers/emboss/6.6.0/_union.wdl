version 1.0

task Union {
  input {
    File? overlap_file
    Boolean? feature
    Boolean? source
    Boolean? find_overlap
  }
  command <<<
    _union \
      ~{if (overlap_file) then "-overlapfile" else ""} \
      ~{if (feature) then "-feature" else ""} \
      ~{if (source) then "-source" else ""} \
      ~{if (find_overlap) then "-findoverlap" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    overlap_file: "outfile    [*.union] Sequence overlaps output file\\n(optional)"
    feature: "boolean    [N] Use feature information"
    source: "boolean    [N] Create source features"
    find_overlap: "boolean    [N] Look for overlaps when joining"
  }
  output {
    File out_stdout = stdout()
    File out_overlap_file = "${in_overlap_file}"
  }
}