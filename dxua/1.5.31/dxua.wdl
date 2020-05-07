version 1.0

task Dxua {
  input {
    Boolean eE
    Boolean aA
    Boolean pP
    Boolean fF
    Boolean nN
    String visibilityVisibility
    String propertyProperty
    String typeType
    String tagTag
    String detailsDetails
    Boolean recursiveRecursive
    String readReadThreads
    Boolean cC
    Boolean uU
    Boolean sS
    String throttleThrottle
    Boolean rR
    Boolean doDoNotCompress
    Boolean gG
    Boolean vV
    Boolean waitWaitOnClose
    Boolean doDoNotResume
    Boolean testTest
    Boolean iI
  }
  command <<<
    dxua \
      ~{true="-e" false="" eE} \
      ~{true="-a" false="" aA} \
      ~{true="-p" false="" pP} \
      ~{true="-f" false="" fF} \
      ~{true="-n" false="" nN} \
      ~{if defined(visibilityVisibility) then ("--visibility " +  '"' + visibilityVisibility + '"') else ""} \
      ~{if defined(propertyProperty) then ("--property " +  '"' + propertyProperty + '"') else ""} \
      ~{if defined(typeType) then ("--type " +  '"' + typeType + '"') else ""} \
      ~{if defined(tagTag) then ("--tag " +  '"' + tagTag + '"') else ""} \
      ~{if defined(detailsDetails) then ("--details " +  '"' + detailsDetails + '"') else ""} \
      ~{true="--recursive" false="" recursiveRecursive} \
      ~{if defined(readReadThreads) then ("--read-threads " +  '"' + readReadThreads + '"') else ""} \
      ~{true="-c" false="" cC} \
      ~{true="-u" false="" uU} \
      ~{true="-s" false="" sS} \
      ~{if defined(throttleThrottle) then ("--throttle " +  '"' + throttleThrottle + '"') else ""} \
      ~{true="-r" false="" rR} \
      ~{true="--do-not-compress" false="" doDoNotCompress} \
      ~{true="-g" false="" gG} \
      ~{true="-v" false="" vV} \
      ~{true="--wait-on-close" false="" waitWaitOnClose} \
      ~{true="--do-not-resume" false="" doDoNotResume} \
      ~{true="--test" false="" testTest} \
      ~{true="-i" false="" iI}
  >>>
}