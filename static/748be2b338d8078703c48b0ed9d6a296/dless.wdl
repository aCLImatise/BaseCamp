version 1.0

task Dless {
  input {
    File inInDelHistory
  }
  command <<<
    dless \
      ~{if defined(inInDelHistory) then ("--indel-history " +  '"' + inInDelHistory + '"') else ""}
  >>>
}