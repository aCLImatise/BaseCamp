version 1.0

task PslCat {
  input {
    String checkCheck
    String noNoHead
    Boolean dirDir
    File outOut
    Boolean extExt
  }
  command <<<
    pslCat \
      ~{if defined(checkCheck) then ("-check " +  '"' + checkCheck + '"') else ""} \
      ~{if defined(noNoHead) then ("-nohead " +  '"' + noNoHead + '"') else ""} \
      ~{true="-dir" false="" dirDir} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{true="-ext" false="" extExt}
  >>>
}