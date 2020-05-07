version 1.0

task _maskfeat {
  input {
    Boolean typeType
    Boolean toToLower
  }
  command <<<
    _maskfeat \
      ~{true="-type" false="" typeType} \
      ~{true="-tolower" false="" toToLower}
  >>>
}