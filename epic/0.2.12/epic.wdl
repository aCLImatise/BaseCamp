version 1.0

task Epic {
  input {
    String bedBed
    String logLog
    String outfileOutfile
  }
  command <<<
    epic \
      ~{if defined(bedBed) then ("--bed " +  '"' + bedBed + '"') else ""} \
      ~{if defined(logLog) then ("--log " +  '"' + logLog + '"') else ""} \
      ~{if defined(outfileOutfile) then ("--outfile " +  '"' + outfileOutfile + '"') else ""}
  >>>
}