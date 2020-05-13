version 1.0

task VtoolsReportInbreedingCoefficient {
  input {
    Boolean samplesSamples
    String mafMafField
    Boolean vV
    String? tableTable
  }
  command <<<
    vtools_report inbreeding_coefficient \
      ~{tableTable} \
      ~{true="--samples" false="" samplesSamples} \
      ~{if defined(mafMafField) then ("--maf_field " +  '"' + mafMafField + '"') else ""} \
      ~{true="-v" false="" vV}
  >>>
}