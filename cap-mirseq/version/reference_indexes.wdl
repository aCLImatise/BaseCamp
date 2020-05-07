version 1.0

task ReferenceIndexes.sh {
  input {
    String? toolToolInfo
  }
  command <<<
    reference_indexes.sh \
      ~{toolToolInfo}
  >>>
}