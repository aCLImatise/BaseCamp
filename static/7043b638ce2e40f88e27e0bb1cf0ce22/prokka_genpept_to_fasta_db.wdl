version 1.0

task ProkkaGenpeptToFastaDb {
  input {
    Boolean verboseVerbose
    String formatFormat
    String sepSep
    String blankBlank
    Boolean pseudoPseudo
    Boolean hypoHypo
    String minMinLen
  }
  command <<<
    prokka-genpept_to_fasta_db \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(formatFormat) then ("--format " +  '"' + formatFormat + '"') else ""} \
      ~{if defined(sepSep) then ("--sep " +  '"' + sepSep + '"') else ""} \
      ~{if defined(blankBlank) then ("--blank " +  '"' + blankBlank + '"') else ""} \
      ~{true="--pseudo" false="" pseudoPseudo} \
      ~{true="--hypo" false="" hypoHypo} \
      ~{if defined(minMinLen) then ("--minlen " +  '"' + minMinLen + '"') else ""}
  >>>
}