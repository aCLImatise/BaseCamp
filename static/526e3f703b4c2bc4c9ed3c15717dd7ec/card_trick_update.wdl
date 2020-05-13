version 1.0

task CardTrickUpdate {
  input {
    File pathPath
    String quietQuiet
  }
  command <<<
    card-trick update \
      ~{if defined(pathPath) then ("--path " +  '"' + pathPath + '"') else ""} \
      ~{if defined(quietQuiet) then ("--quiet " +  '"' + quietQuiet + '"') else ""}
  >>>
}