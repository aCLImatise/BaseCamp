version 1.0

task MatamCompareSamples.py {
  input {
    String samplesSamplesFile
    String ouputOuputContingencyTable
    String ouputOuputComparaisonTable
  }
  command <<<
    matam_compare_samples.py \
      ~{if defined(samplesSamplesFile) then ("--samples_file " +  '"' + samplesSamplesFile + '"') else ""} \
      ~{if defined(ouputOuputContingencyTable) then ("--ouput_contingency_table " +  '"' + ouputOuputContingencyTable + '"') else ""} \
      ~{if defined(ouputOuputComparaisonTable) then ("--ouput_comparaison_table " +  '"' + ouputOuputComparaisonTable + '"') else ""}
  >>>
}