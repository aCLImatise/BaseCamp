version 1.0

task Dcmprscu {
  input {
    Boolean qQ
    Boolean vV
    Boolean dD
    Boolean logLogLevel
    Boolean logLogConfig
    Boolean noNoPrint
    Boolean sessionSessionPrint
    Boolean monochromeMonochrome1
    Boolean sleepSleep
    Boolean copiesCopies
    Boolean mediumMediumType
    Boolean destinationDestination
    Boolean labelLabel
    Boolean priorityPriority
    Boolean ownerOwner
    String? dcmDcmFileIn
  }
  command <<<
    dcmprscu \
      ~{dcmDcmFileIn} \
      ~{true="-q" false="" qQ} \
      ~{true="-v" false="" vV} \
      ~{true="-d" false="" dD} \
      ~{true="--log-level" false="" logLogLevel} \
      ~{true="--log-config" false="" logLogConfig} \
      ~{true="--noprint" false="" noNoPrint} \
      ~{true="--session-print" false="" sessionSessionPrint} \
      ~{true="--monochrome1" false="" monochromeMonochrome1} \
      ~{true="--sleep" false="" sleepSleep} \
      ~{true="--copies" false="" copiesCopies} \
      ~{true="--medium-type" false="" mediumMediumType} \
      ~{true="--destination" false="" destinationDestination} \
      ~{true="--label" false="" labelLabel} \
      ~{true="--priority" false="" priorityPriority} \
      ~{true="--owner" false="" ownerOwner}
  >>>
}