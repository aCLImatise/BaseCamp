version 1.0

task EBFilter {
  input {
    String fF
    String tT
    String qQ
    String qQ
    String ffFf
    Boolean lLOption
    String regionRegion
    Boolean debugDebug
  }
  command <<<
    EBFilter \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{if defined(qQ) then ("-q " +  '"' + qQ + '"') else ""} \
      ~{if defined(qQ) then ("-Q " +  '"' + qQ + '"') else ""} \
      ~{if defined(ffFf) then ("--ff " +  '"' + ffFf + '"') else ""} \
      ~{true="--loption" false="" lLOption} \
      ~{if defined(regionRegion) then ("--region " +  '"' + regionRegion + '"') else ""} \
      ~{true="--debug" false="" debugDebug}
  >>>
}