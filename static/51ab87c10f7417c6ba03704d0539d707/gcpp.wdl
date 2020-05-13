version 1.0

task Gcpp.py {
  input {
    String refRef
    String? optionsOptions
    String? listList
    String? ofOf
    String? geneticGenetic
    String? codesCodes
  }
  command <<<
    gcpp.py \
      ~{optionsOptions} \
      ~{if defined(refRef) then ("--ref " +  '"' + refRef + '"') else ""} \
      ~{listList} \
      ~{ofOf} \
      ~{geneticGenetic} \
      ~{codesCodes}
  >>>
}