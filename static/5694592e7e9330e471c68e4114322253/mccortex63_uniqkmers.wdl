version 1.0

task Mccortex63Uniqkmers {
  input {
    String flankFlank
  }
  command <<<
    mccortex63 uniqkmers \
      ~{if defined(flankFlank) then ("--flank " +  '"' + flankFlank + '"') else ""}
  >>>
}