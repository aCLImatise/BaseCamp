version 1.0

task Mccortex31Uniqkmers {
  input {
    String flankFlank
  }
  command <<<
    mccortex31 uniqkmers \
      ~{if defined(flankFlank) then ("--flank " +  '"' + flankFlank + '"') else ""}
  >>>
}