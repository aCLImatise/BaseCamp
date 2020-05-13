version 1.0

task ProbeMatch {
  input {
    String maxMaxDist
    String outfileOutfile
  }
  command <<<
    ProbeMatch \
      ~{if defined(maxMaxDist) then ("--maxDist " +  '"' + maxMaxDist + '"') else ""} \
      ~{if defined(outfileOutfile) then ("--outFile " +  '"' + outfileOutfile + '"') else ""}
  >>>
}