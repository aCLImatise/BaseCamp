version 1.0

task PoretoolsOrganise {
  input {
    Boolean quietQuiet
    Boolean copyCopy
    File? filesFiles
    String? stringString
  }
  command <<<
    poretools organise \
      ~{filesFiles} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{true="--copy" false="" copyCopy} \
      ~{stringString}
  >>>
}