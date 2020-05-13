version 1.0

task Roary2fripan.pyOUTPUTPREFIXPREFIX {
  input {
    String? optionsOptions
    String? outputOutputPrefix
  }
  command <<<
    roary2fripan.py OUTPUT-PREFIX PREFIX \
      ~{optionsOptions} \
      ~{outputOutputPrefix}
  >>>
}