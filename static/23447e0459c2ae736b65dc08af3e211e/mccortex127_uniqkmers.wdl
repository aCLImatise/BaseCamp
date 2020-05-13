version 1.0

task Mccortex127Uniqkmers {
  input {
    String flankFlank
  }
  command <<<
    mccortex127 uniqkmers \
      ~{if defined(flankFlank) then ("--flank " +  '"' + flankFlank + '"') else ""}
  >>>
}