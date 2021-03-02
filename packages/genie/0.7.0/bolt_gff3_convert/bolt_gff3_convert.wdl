version 1.0

task BoltGff3Convert {
  input {
    String? attributes
    Boolean? end
    File? file_path
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
    String genie
    Int gff_three
    String convert
  }
  command <<<
    bolt gff3 convert \
      ~{genie} \
      ~{gff_three} \
      ~{convert} \
      ~{if defined(attributes) then ("--attributes " +  '"' + attributes + '"') else ""} \
      ~{if (end) then "--end" else ""} \
      ~{if defined(file_path) then ("--filepath " +  '"' + file_path + '"') else ""} \
      ~{if (header) then "--header" else ""} \
      ~{if defined(limit) then ("--limit " +  '"' + limit + '"') else ""} \
      ~{if (phase) then "--phase" else ""} \
      ~{if defined(replacement) then ("--replacement " +  '"' + replacement + '"') else ""} \
      ~{if (score) then "--score" else ""} \
      ~{if defined(separator) then ("--separator " +  '"' + separator + '"') else ""} \
      ~{if (seq_id) then "--seqid" else ""} \
      ~{if (source) then "--source" else ""} \
      ~{if (start) then "--start" else ""} \
      ~{if (strand) then "--strand" else ""} \
      ~{if (type) then "--type" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    attributes: "select attributes by key"
    end: "select end"
    file_path: "A bam file (*require)"
    header: "hiding headers"
    limit: "Output Limit (default -1)"
    phase: "select phase"
    replacement: "the replacement character if there is a blank value"
    score: "select score"
    separator: "the separator of each values (default \\\"\\t\\\")"
    seq_id: "select seqid"
    source: "select source"
    start: "select start"
    strand: "select strand"
    type: "select type"
    genie: ""
    gff_three: ""
    convert: ""
  }
  output {
    File out_stdout = stdout()
  }
}