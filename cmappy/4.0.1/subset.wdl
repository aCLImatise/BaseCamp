version 1.0

task Subset {
  input {
    String inInPath
    Array[String]+ ridRid
    Array[String]+ cidCid
    Array[String]+ excludeExcludeRid
    Array[String]+ excludeExcludeCid
    String outOutName
    String outOutType
    Boolean verboseVerbose
  }
  command <<<
    subset \
      ~{if defined(inInPath) then ("--in_path " +  '"' + inInPath + '"') else ""} \
      ~{if defined(ridRid) then ("--rid " +  '"' + ridRid + '"') else ""} \
      ~{if defined(cidCid) then ("--cid " +  '"' + cidCid + '"') else ""} \
      ~{if defined(excludeExcludeRid) then ("--exclude_rid " +  '"' + excludeExcludeRid + '"') else ""} \
      ~{if defined(excludeExcludeCid) then ("--exclude_cid " +  '"' + excludeExcludeCid + '"') else ""} \
      ~{if defined(outOutName) then ("--out_name " +  '"' + outOutName + '"') else ""} \
      ~{if defined(outOutType) then ("--out_type " +  '"' + outOutType + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}