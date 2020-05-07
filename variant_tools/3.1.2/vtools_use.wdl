version 1.0

task VtoolsUse {
  input {
    Boolean vV
    String asAs
    Boolean lL
    String anAnNoType
    Boolean linkedLinkedFields
    Boolean fF
    Boolean rebuildRebuild
    String jobsJobs
    String? sourceSource
  }
  command <<<
    vtools use \
      ~{sourceSource} \
      ~{true="-v" false="" vV} \
      ~{if defined(asAs) then ("--as " +  '"' + asAs + '"') else ""} \
      ~{true="-l" false="" lL} \
      ~{if defined(anAnNoType) then ("--anno_type " +  '"' + anAnNoType + '"') else ""} \
      ~{true="--linked_fields" false="" linkedLinkedFields} \
      ~{true="-f" false="" fF} \
      ~{true="--rebuild" false="" rebuildRebuild} \
      ~{if defined(jobsJobs) then ("--jobs " +  '"' + jobsJobs + '"') else ""}
  >>>
}