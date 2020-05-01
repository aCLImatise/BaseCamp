version 1.0

task ProkkaGenbankToFastaDb {
  input {
    Boolean verboseVerbose
    String formatFormat
    String idIdTag
    String sepSep
    String blankBlank
    Boolean pseudoPseudo
    Boolean hypoHypo
    String gGCode
    String minMinLen
  }
  command <<<
    prokka-genbank_to_fasta_db \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(formatFormat) then ("--format " +  '"' + formatFormat + '"') else ""} \
      ~{if defined(idIdTag) then ("--idtag " +  '"' + idIdTag + '"') else ""} \
      ~{if defined(sepSep) then ("--sep " +  '"' + sepSep + '"') else ""} \
      ~{if defined(blankBlank) then ("--blank " +  '"' + blankBlank + '"') else ""} \
      ~{true="--pseudo" false="" pseudoPseudo} \
      ~{true="--hypo" false="" hypoHypo} \
      ~{if defined(gGCode) then ("--gcode " +  '"' + gGCode + '"') else ""} \
      ~{if defined(minMinLen) then ("--minlen " +  '"' + minMinLen + '"') else ""}
  >>>
}