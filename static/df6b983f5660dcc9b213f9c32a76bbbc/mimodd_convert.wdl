version 1.0

task MimoddConvert {
  input {
    String iIFormat
    String ofileOfile
    String oOFormat
    String headerHeader
    Boolean splitSplitOnRgs
    String threadsThreads
  }
  command <<<
    mimodd convert \
      ~{if defined(iIFormat) then ("--iformat " +  '"' + iIFormat + '"') else ""} \
      ~{if defined(ofileOfile) then ("--ofile " +  '"' + ofileOfile + '"') else ""} \
      ~{if defined(oOFormat) then ("--oformat " +  '"' + oOFormat + '"') else ""} \
      ~{if defined(headerHeader) then ("--header " +  '"' + headerHeader + '"') else ""} \
      ~{true="--split-on-rgs" false="" splitSplitOnRgs} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""}
  >>>
}