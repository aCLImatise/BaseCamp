version 1.0

task Biscuit {
  input {
    String readRead
    String bamBam
    String baseBase
    Boolean epiEpiReads
    String? commandCommand
  }
  command <<<
    biscuit \
      ~{commandCommand} \
      ~{if defined(readRead) then ("-- Read " +  '"' + readRead + '"') else ""} \
      ~{if defined(bamBam) then ("-- BAM " +  '"' + bamBam + '"') else ""} \
      ~{if defined(baseBase) then ("-- Base " +  '"' + baseBase + '"') else ""} \
      ~{true="-- Epireads" false="" epiEpiReads}
  >>>
}