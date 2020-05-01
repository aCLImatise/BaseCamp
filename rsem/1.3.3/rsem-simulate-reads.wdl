version 1.0

task RsemSimulateReads {
  input {
    String seedSeed
    Boolean qQ
    String? referenceReferenceName
    String? estimatedEstimatedModelFile
    String? estimatedEstimatedIsoformResults
    String? theTheTa0
    String? nN
    String? outputOutputName
  }
  command <<<
    rsem-simulate-reads \
      ~{referenceReferenceName} \
      ~{if defined(seedSeed) then ("--seed " +  '"' + seedSeed + '"') else ""} \
      ~{true="-q" false="" qQ} \
      ~{estimatedEstimatedModelFile} \
      ~{estimatedEstimatedIsoformResults} \
      ~{theTheTa0} \
      ~{nN} \
      ~{outputOutputName}
  >>>
}