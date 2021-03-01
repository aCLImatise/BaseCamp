version 1.0

task Depot {
  input {
    Boolean? depot
    Boolean? reads
    Boolean? overlaps
    Boolean? overlaps_format
    Boolean? reads_format
  }
  command <<<
    depot \
      ~{if (depot) then "--depot" else ""} \
      ~{if (reads) then "--reads" else ""} \
      ~{if (overlaps) then "--overlaps" else ""} \
      ~{if (overlaps_format) then "--overlaps_format" else ""} \
      ~{if (reads_format) then "--reads_format" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    depot: "depot path (string)"
    reads: "reads file (string [=])"
    overlaps: "overlaps file (string [=])"
    overlaps_format: "overlaps format; supported: mhap, radump (string [=mhap])"
    reads_format: "reads format; supported: fasta, fastq, afg (string [=fasta])"
  }
  output {
    File out_stdout = stdout()
  }
}