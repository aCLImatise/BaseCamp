version 1.0

task GenieGff3Convert {
  input {
    String? attributes
    Boolean? end
    String? file_path
    Boolean? header
    Int? limit
    Boolean? phase
    String? replacement
    Boolean? score
    String? separator
    Boolean? seq_id
    Boolean? source
    Boolean? start
    Boolean? strand
    Boolean? type
    String? flags
  }
  command <<<
    genie gff3 convert \
      ~{flags} \
      ~{if defined(attributes) then ("--attributes " +  '"' + attributes + '"') else ""} \
      ~{true="--end" false="" end} \
      ~{if defined(file_path) then ("--filepath " +  '"' + file_path + '"') else ""} \
      ~{true="--header" false="" header} \
      ~{if defined(limit) then ("--limit " +  '"' + limit + '"') else ""} \
      ~{true="--phase" false="" phase} \
      ~{if defined(replacement) then ("--replacement " +  '"' + replacement + '"') else ""} \
      ~{true="--score" false="" score} \
      ~{if defined(separator) then ("--separator " +  '"' + separator + '"') else ""} \
      ~{true="--seqid" false="" seq_id} \
      ~{true="--source" false="" source} \
      ~{true="--start" false="" start} \
      ~{true="--strand" false="" strand} \
      ~{true="--type" false="" type}
  >>>
  parameter_meta {
    attributes: "select attributes by key"
    end: "select end"
    file_path: "A bam file (*require)"
    header: "hiding headers"
    limit: "Output Limit (default -1)"
    phase: "select phase"
    replacement: "the replacement character if there is a blank value"
    score: "select score"
    separator: "the separator of each values (default \"\t\")"
    seq_id: "select seqid"
    source: "select source"
    start: "select start"
    strand: "select strand"
    type: "select type"
    flags: ""
  }
}