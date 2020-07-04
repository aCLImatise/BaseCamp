version 1.0

task MergeOTUs.sh {
  input {
    String in
  }
  command <<<
    mergeOTUs.sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
}