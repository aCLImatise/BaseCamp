version 1.0

task FastTree {
  input {
    Boolean bioBioNj
    Boolean njNj
  }
  command <<<
    FastTree \
      ~{true="-bionj" false="" bioBioNj} \
      ~{true="-nj" false="" njNj}
  >>>
}