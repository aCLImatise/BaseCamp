version 1.0

task ReadSeqReverseComp {
  input {
    Boolean checkCheck
    String formatFormat
    String inInFile
    String outfileOutfile
  }
  command <<<
    ReadSeq reverse-comp \
      ~{true="--check" false="" checkCheck} \
      ~{if defined(formatFormat) then ("--format " +  '"' + formatFormat + '"') else ""} \
      ~{if defined(inInFile) then ("--infile " +  '"' + inInFile + '"') else ""} \
      ~{if defined(outfileOutfile) then ("--outfile " +  '"' + outfileOutfile + '"') else ""}
  >>>
}