version 1.0

task ListReadPlacedStatus {
  input {
    Boolean sS
    Boolean vV
    Boolean sS
    Boolean dD
    Boolean pP
    Boolean eE
    Boolean iI
    String? listListReadPlacedStatus
  }
  command <<<
    listReadPlacedStatus \
      ~{listListReadPlacedStatus} \
      ~{true="-s" false="" sS} \
      ~{true="-v" false="" vV} \
      ~{true="-S" false="" sS} \
      ~{true="-D" false="" dD} \
      ~{true="-P" false="" pP} \
      ~{true="-E" false="" eE} \
      ~{true="-I" false="" iI}
  >>>
}