version 1.0

task Maq2samLong {
  input {
    String? maq2samMaq2sam
    String? inInMap
    String? readReadGroup
  }
  command <<<
    maq2sam-long \
      ~{maq2samMaq2sam} \
      ~{inInMap} \
      ~{readReadGroup}
  >>>
}