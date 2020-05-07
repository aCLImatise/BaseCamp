version 1.0

task MimoddDelcall {
  input {
    String indexIndexFiles
    String ofileOfile
    String maxMaxCov
    Int minMinSize
    Boolean includeIncludeUncovered
    Boolean groupGroupById
    Boolean verboseVerbose
  }
  command <<<
    mimodd delcall \
      ~{if defined(indexIndexFiles) then ("--index-files " +  '"' + indexIndexFiles + '"') else ""} \
      ~{if defined(ofileOfile) then ("--ofile " +  '"' + ofileOfile + '"') else ""} \
      ~{if defined(maxMaxCov) then ("--max-cov " +  '"' + maxMaxCov + '"') else ""} \
      ~{if defined(minMinSize) then ("--min-size " +  '"' + minMinSize + '"') else ""} \
      ~{true="--include-uncovered" false="" includeIncludeUncovered} \
      ~{true="--group-by-id" false="" groupGroupById} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}