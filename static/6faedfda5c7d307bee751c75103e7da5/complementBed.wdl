version 1.0

task ComplementBed {
  input {
    Boolean lL
    String? chr18Chr18Gl000207Random
  }
  command <<<
    complementBed \
      ~{chr18Chr18Gl000207Random} \
      ~{true="-L" false="" lL}
  >>>
}