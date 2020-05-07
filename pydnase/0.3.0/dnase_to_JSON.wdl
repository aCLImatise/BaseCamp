version 1.0

task DnaseToJSON.pyRegions {
  input {
    String windowWindowSize
    Boolean iI
    Boolean aA
    String? regionsRegions
    String? readsReads
    String? outputOutput
  }
  command <<<
    dnase_to_JSON.py regions \
      ~{regionsRegions} \
      ~{if defined(windowWindowSize) then ("--window_size " +  '"' + windowWindowSize + '"') else ""} \
      ~{true="-i" false="" iI} \
      ~{true="-A" false="" aA} \
      ~{readsReads} \
      ~{outputOutput}
  >>>
}