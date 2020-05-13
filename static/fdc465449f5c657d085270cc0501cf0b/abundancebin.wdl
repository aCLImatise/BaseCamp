version 1.0

task Abundancebin {
  input {
    Boolean recursiveRecursiveClassification
  }
  command <<<
    abundancebin \
      ~{true="-RECURSIVE_CLASSIFICATION" false="" recursiveRecursiveClassification}
  >>>
}