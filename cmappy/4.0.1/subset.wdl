version 1.0

task Subset {
  input {
    String? in_path
    Array[String] rid
    Array[String] cid
    Array[String] exclude_rid
    Array[String] exclude_cid
    String? out_name
    String? out_type
    Boolean? verbose
  }
  command <<<
    subset \
      ~{if defined(in_path) then ("--in_path " +  '"' + in_path + '"') else ""} \
      ~{if defined(rid) then ("--rid " +  '"' + rid + '"') else ""} \
      ~{if defined(cid) then ("--cid " +  '"' + cid + '"') else ""} \
      ~{if defined(exclude_rid) then ("--exclude_rid " +  '"' + exclude_rid + '"') else ""} \
      ~{if defined(exclude_cid) then ("--exclude_cid " +  '"' + exclude_cid + '"') else ""} \
      ~{if defined(out_name) then ("--out_name " +  '"' + out_name + '"') else ""} \
      ~{if defined(out_type) then ("--out_type " +  '"' + out_type + '"') else ""} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    in_path: "file path to input GCT(x) file (default: None)"
    rid: "filepath to grp file or string array for including rows (default: None)"
    cid: "filepath to grp file or string array for including cols (default: None)"
    exclude_rid: "filepath to grp file or string array for excluding rows (default: None)"
    exclude_cid: "filepath to grp file or string array for excluding cols (default: None)"
    out_name: "what to name the output file (default: ds_subsetted.gct)"
    out_type: "whether to write output as GCT or GCTx (default: gct)"
    verbose: "whether to increase the # of messages reported (default: False)"
  }
}