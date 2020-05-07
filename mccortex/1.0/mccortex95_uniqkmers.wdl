version 1.0

task Mccortex95Uniqkmers {
  input {
    String flankFlank
  }
  command <<<
    mccortex95 uniqkmers \
      ~{if defined(flankFlank) then ("--flank " +  '"' + flankFlank + '"') else ""}
  >>>
}