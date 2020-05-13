version 1.0

task MimoddRebase {
  input {
    String ofileOfile
    Boolean reverseReverse
    String filterFilter
    Boolean verboseVerbose
    String? inputInputFile
    String? chainChainFile
  }
  command <<<
    mimodd rebase \
      ~{inputInputFile} \
      ~{if defined(ofileOfile) then ("--ofile " +  '"' + ofileOfile + '"') else ""} \
      ~{true="--reverse" false="" reverseReverse} \
      ~{if defined(filterFilter) then ("--filter " +  '"' + filterFilter + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{chainChainFile}
  >>>
}