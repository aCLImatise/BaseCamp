version 1.0

task DepStatus {
  input {
    Boolean detailDetail
    Boolean dotDot
    Boolean examplesExamples
    Boolean fF
    Boolean jsonJson
    Boolean lockLock
    Boolean missingMissing
    Boolean oldOld
    Boolean outOut
    Boolean vV
    String? packagePackage
  }
  command <<<
    dep status \
      ~{packagePackage} \
      ~{true="-detail" false="" detailDetail} \
      ~{true="-dot" false="" dotDot} \
      ~{true="-examples" false="" examplesExamples} \
      ~{true="-f" false="" fF} \
      ~{true="-json" false="" jsonJson} \
      ~{true="-lock" false="" lockLock} \
      ~{true="-missing" false="" missingMissing} \
      ~{true="-old" false="" oldOld} \
      ~{true="-out" false="" outOut} \
      ~{true="-v" false="" vV}
  >>>
}