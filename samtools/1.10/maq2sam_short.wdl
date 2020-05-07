version 1.0

task Maq2samShort {
  input {
    String? maq2samMaq2sam
    String? inInMap
    String? readReadGroup
  }
  command <<<
    maq2sam-short \
      ~{maq2samMaq2sam} \
      ~{inInMap} \
      ~{readReadGroup}
  >>>
}