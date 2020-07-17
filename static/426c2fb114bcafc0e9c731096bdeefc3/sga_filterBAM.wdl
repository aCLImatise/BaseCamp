version 1.0

task SgaFilterBAM {
  input {
    Boolean? verbose
    File? as_qg
    String? max_distance
    String? error_rate
    String? min_quality
    File? out_bam
    String? prefix
    String? max_km_er_depth
    Boolean? mate_contamination
    String? option
  }
  command <<<
    sga filterBAM \
      ~{option} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(as_qg) then ("--asqg " +  '"' + as_qg + '"') else ""} \
      ~{if defined(max_distance) then ("--max-distance " +  '"' + max_distance + '"') else ""} \
      ~{if defined(error_rate) then ("--error-rate " +  '"' + error_rate + '"') else ""} \
      ~{if defined(min_quality) then ("--min-quality " +  '"' + min_quality + '"') else ""} \
      ~{if defined(out_bam) then ("--out-bam " +  '"' + out_bam + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(max_km_er_depth) then ("--max-kmer-depth " +  '"' + max_km_er_depth + '"') else ""} \
      ~{true="--mate-contamination" false="" mate_contamination}
  >>>
  parameter_meta {
    verbose: "display verbose output"
    as_qg: "load an asqg file and filter pairs that are shorter than --max-distance"
    max_distance: "search the graph for a path completing the mate-pair fragment. If the path is less than LEN then the pair will be discarded."
    error_rate: "filter out pairs where one read has an error rate higher than F (default: no filter)"
    min_quality: "filter out pairs where one read has mapping quality less than F (default: 10)"
    out_bam: "write the filtered reads to FILE"
    prefix: "load the FM-index with prefix STR"
    max_km_er_depth: "filter out pairs that contain a kmer that has been seen in the FM-index more than N times"
    mate_contamination: "filter out pairs aligning with FR orientation, which may be contiminates in a mate pair library"
    option: ""
  }
}