version 1.0

task BamtoolsRevert {
  input {
    String inIn
    String outOut
    Boolean forceForceCompression
    Boolean keepKeepDuplicate
    Boolean keepKeepQualities
  }
  command <<<
    bamtools revert \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{true="-forceCompression" false="" forceForceCompression} \
      ~{true="-keepDuplicate" false="" keepKeepDuplicate} \
      ~{true="-keepQualities" false="" keepKeepQualities}
  >>>
}