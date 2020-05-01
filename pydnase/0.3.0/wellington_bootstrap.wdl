version 1.0

task WellingtonBootstrap.py {
  input {
    String footprintFootprintSizes
    String fdrFdrCutOff
    String fdrFdrIterations
    String fdrFdrLimit
    String processesProcesses
    Boolean aA
    String? treatmentTreatmentBam
    String? controlControlBam
    String? bedBedSites
    String? treatmentTreatmentOnlyOutput
    String? controlControlOnlyOutput
  }
  command <<<
    wellington_bootstrap.py \
      ~{treatmentTreatmentBam} \
      ~{if defined(footprintFootprintSizes) then ("--footprint-sizes " +  '"' + footprintFootprintSizes + '"') else ""} \
      ~{if defined(fdrFdrCutOff) then ("--FDR_cutoff " +  '"' + fdrFdrCutOff + '"') else ""} \
      ~{if defined(fdrFdrIterations) then ("--FDR_iterations " +  '"' + fdrFdrIterations + '"') else ""} \
      ~{if defined(fdrFdrLimit) then ("--FDR_limit " +  '"' + fdrFdrLimit + '"') else ""} \
      ~{if defined(processesProcesses) then ("--processes " +  '"' + processesProcesses + '"') else ""} \
      ~{true="-A" false="" aA} \
      ~{controlControlBam} \
      ~{bedBedSites} \
      ~{treatmentTreatmentOnlyOutput} \
      ~{controlControlOnlyOutput}
  >>>
}