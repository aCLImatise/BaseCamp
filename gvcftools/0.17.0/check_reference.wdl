version 1.0

task CheckReference {
  input {
    String refRef
  }
  command <<<
    check_reference \
      ~{if defined(refRef) then ("--ref " +  '"' + refRef + '"') else ""}
  >>>
}