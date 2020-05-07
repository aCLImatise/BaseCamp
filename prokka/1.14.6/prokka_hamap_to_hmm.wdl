version 1.0

task ProkkaHamapToHmm {
  input {
    Boolean verboseVerbose
    String datadirDatadir
    String sepSep
    String blankBlank
  }
  command <<<
    prokka-hamap_to_hmm \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(datadirDatadir) then ("--datadir " +  '"' + datadirDatadir + '"') else ""} \
      ~{if defined(sepSep) then ("--sep " +  '"' + sepSep + '"') else ""} \
      ~{if defined(blankBlank) then ("--blank " +  '"' + blankBlank + '"') else ""}
  >>>
}