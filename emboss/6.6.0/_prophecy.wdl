version 1.0

task _prophecy {
  input {
    Boolean? type
    Boolean? name
  }
  command <<<
    _prophecy \
      ~{true="-type" false="" type} \
      ~{true="-name" false="" name}
  >>>
  parameter_meta {
    type: "menu       [F] Select type (Values: F (Frequency); G (Gribskov); H (Henikoff))"
    name: "string     [mymatrix] Enter a name for the profile (Any string)"
  }
}