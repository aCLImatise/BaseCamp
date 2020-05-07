version 1.0

task BamtoolsCoverage {
  input {
    String inIn
    File outOut
  }
  command <<<
    bamtools coverage \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""}
  >>>
}