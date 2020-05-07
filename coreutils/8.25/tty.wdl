version 1.0

task Tty {
  input {
    String silentSilent
  }
  command <<<
    tty \
      ~{if defined(silentSilent) then ("--silent " +  '"' + silentSilent + '"') else ""}
  >>>
}