version 1.0

task Maskfeat {
  input {
    Boolean typeType
    Boolean toToLower
  }
  command <<<
    maskfeat \
      ~{true="-type" false="" typeType} \
      ~{true="-tolower" false="" toToLower}
  >>>
}