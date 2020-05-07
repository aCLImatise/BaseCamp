version 1.0

task OmeroDelete {
  input {
    String waitWait
    String includeInclude
    String excludeExclude
    Boolean orderedOrdered
    Boolean listList
    Boolean reportReport
    Boolean dryDryRun
    Boolean forceForce
    String? objObj
  }
  command <<<
    omero delete \
      ~{objObj} \
      ~{if defined(waitWait) then ("--wait " +  '"' + waitWait + '"') else ""} \
      ~{if defined(includeInclude) then ("--include " +  '"' + includeInclude + '"') else ""} \
      ~{if defined(excludeExclude) then ("--exclude " +  '"' + excludeExclude + '"') else ""} \
      ~{true="--ordered" false="" orderedOrdered} \
      ~{true="--list" false="" listList} \
      ~{true="--report" false="" reportReport} \
      ~{true="--dry-run" false="" dryDryRun} \
      ~{true="--force" false="" forceForce}
  >>>
}