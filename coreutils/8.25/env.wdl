version 1.0

task Env {
  input {
    String unsetUnset
  }
  command <<<
    env \
      ~{if defined(unsetUnset) then ("--unset " +  '"' + unsetUnset + '"') else ""}
  >>>
}