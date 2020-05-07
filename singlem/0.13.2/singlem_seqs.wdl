version 1.0

task SinglemSeqs {
  input {
    Boolean debugDebug
    Boolean quietQuiet
    Boolean fullFullHelp
    String alignmentAlignment
    String alignmentAlignmentType
    Int windowWindowSize
  }
  command <<<
    singlem seqs \
      ~{true="--debug" false="" debugDebug} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{true="--full_help" false="" fullFullHelp} \
      ~{if defined(alignmentAlignment) then ("--alignment " +  '"' + alignmentAlignment + '"') else ""} \
      ~{if defined(alignmentAlignmentType) then ("--alignment_type " +  '"' + alignmentAlignmentType + '"') else ""} \
      ~{if defined(windowWindowSize) then ("--window_size " +  '"' + windowWindowSize + '"') else ""}
  >>>
}