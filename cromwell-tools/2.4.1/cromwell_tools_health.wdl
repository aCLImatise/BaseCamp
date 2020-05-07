version 1.0

task CromwellToolsHealth {
  input {
    String? submitSubmit
    String? waitWait
    String? statusStatus
    String? abortAbort
    String? releaseReleaseHold
    String? metadataMetadata
    String? queryQuery
    String? healthHealth
    String? taskTaskRuntime
  }
  command <<<
    cromwell-tools health \
      ~{submitSubmit} \
      ~{waitWait} \
      ~{statusStatus} \
      ~{abortAbort} \
      ~{releaseReleaseHold} \
      ~{metadataMetadata} \
      ~{queryQuery} \
      ~{healthHealth} \
      ~{taskTaskRuntime}
  >>>
}