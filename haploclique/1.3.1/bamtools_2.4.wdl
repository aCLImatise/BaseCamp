version 1.0

task Bamtools2.4.1Stats {
  input {
    String? in
    File? list
    Boolean? insert
    String bam_tools
    String stats
  }
  command <<<
    bamtools-2.4.1 stats \
      ~{bam_tools} \
      ~{stats} \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(list) then ("-list " +  '"' + list + '"') else ""} \
      ~{true="-insert" false="" insert}
  >>>
  parameter_meta {
    in: "the input BAM file [stdin]"
    list: "the input BAM file list, one line per file"
    insert: "summarize insert size data"
    bam_tools: ""
    stats: ""
  }
}