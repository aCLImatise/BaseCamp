version 1.0

task FilterStoptags.py {
  input {
    Boolean infoInfo
    String kKSize
    Boolean forceForce
  }
  command <<<
    filter-stoptags.py \
      ~{true="--info" false="" infoInfo} \
      ~{if defined(kKSize) then ("--ksize " +  '"' + kKSize + '"') else ""} \
      ~{true="--force" false="" forceForce}
  >>>
}