version 1.0

task PoretoolsCombine {
  input {
    Boolean quietQuiet
    String oO
    File? filesFiles
  }
  command <<<
    poretools combine \
      ~{filesFiles} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""}
  >>>
}