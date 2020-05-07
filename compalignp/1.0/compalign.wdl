version 1.0

task Compalign {
  input {
    Boolean cC
    String inInFormat
    Boolean quietQuiet
  }
  command <<<
    compalign \
      ~{true="-c" false="" cC} \
      ~{if defined(inInFormat) then ("--informat " +  '"' + inInFormat + '"') else ""} \
      ~{true="--quiet" false="" quietQuiet}
  >>>
}