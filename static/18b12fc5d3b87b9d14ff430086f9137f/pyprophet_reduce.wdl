version 1.0

task PyprophetReduce {
  input {
    File inIn
    File outOut
  }
  command <<<
    pyprophet reduce \
      ~{if defined(inIn) then ("--in " +  '"' + inIn + '"') else ""} \
      ~{if defined(outOut) then ("--out " +  '"' + outOut + '"') else ""}
  >>>
}