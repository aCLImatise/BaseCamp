version 1.0

task Overlap2dot {
  input {
    Boolean? reads
    Boolean? overlaps
    Boolean? reads_format
  }
  command <<<
    overlap2dot \
      ~{if (reads) then "--reads" else ""} \
      ~{if (overlaps) then "--overlaps" else ""} \
      ~{if (reads_format) then "--reads_format" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    reads: "reads file (string [=])"
    overlaps: "overlaps file (string [=])"
    reads_format: "reads format; supported: fasta, fastq, afg (string [=fasta])"
  }
  output {
    File out_stdout = stdout()
  }
}