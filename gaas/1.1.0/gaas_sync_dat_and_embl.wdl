version 1.0

task GaasSyncDatAndEmbl.pl {
  input {
    Boolean datDat
    Boolean emblEmbl
    Boolean bacBac
    String outputOutput
  }
  command <<<
    gaas_sync_dat_and_embl.pl \
      ~{true="--dat" false="" datDat} \
      ~{true="--embl" false="" emblEmbl} \
      ~{true="--bac" false="" bacBac} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""}
  >>>
}