version 1.0

task Bamtools241Stats {
  input {
    File? in
    File? list
    Boolean? insert
    String bam_tools
    String stats
  }
  command <<<
    bamtools_2_4_1 stats \
      ~{bam_tools} \
      ~{stats} \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(list) then ("-list " +  '"' + list + '"') else ""} \
      ~{if (insert) then "-insert" else ""}
  >>>
  parameter_meta {
    in: "the input BAM file [stdin]"
    list: "the input BAM file list, one\\nline per file"
    insert: "summarize insert size data"
    bam_tools: ""
    stats: ""
  }
  output {
    File out_stdout = stdout()
  }
}