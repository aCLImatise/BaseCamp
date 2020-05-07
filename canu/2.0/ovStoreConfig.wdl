version 1.0

task OvStoreConfig {
  input {
    String sS
    File lL
    String mM
    String createCreate
    String describeDescribe
    Boolean numNumBuckets
    Boolean numNumSlices
    Boolean sortSortMemory
    String listListInputs
    String? ovOvOverlap
    String? ovOvOverlapSortSize
    String? scScChildMax
    String? scScOpenMax
  }
  command <<<
    ovStoreConfig \
      ~{ovOvOverlap} \
      ~{if defined(sS) then ("-S " +  '"' + sS + '"') else ""} \
      ~{if defined(lL) then ("-L " +  '"' + lL + '"') else ""} \
      ~{if defined(mM) then ("-M " +  '"' + mM + '"') else ""} \
      ~{if defined(createCreate) then ("-create " +  '"' + createCreate + '"') else ""} \
      ~{if defined(describeDescribe) then ("-describe " +  '"' + describeDescribe + '"') else ""} \
      ~{true="-numbuckets" false="" numNumBuckets} \
      ~{true="-numslices" false="" numNumSlices} \
      ~{true="-sortmemory" false="" sortSortMemory} \
      ~{if defined(listListInputs) then ("-listinputs " +  '"' + listListInputs + '"') else ""} \
      ~{ovOvOverlapSortSize} \
      ~{scScChildMax} \
      ~{scScOpenMax}
  >>>
}