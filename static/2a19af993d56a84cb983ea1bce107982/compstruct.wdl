version 1.0

task Compstruct {
  input {
    String inInFormat
    Boolean quietQuiet
  }
  command <<<
    compstruct \
      ~{if defined(inInFormat) then ("--informat " +  '"' + inInFormat + '"') else ""} \
      ~{true="--quiet" false="" quietQuiet}
  >>>
}