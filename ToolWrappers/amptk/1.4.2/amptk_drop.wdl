version 1.0

task AmptkDrop {
  input {
    Boolean? input_otu_file
    Boolean? reads
    Boolean? list
    Boolean? in_file_one
    File? out
    String arguments
  }
  command <<<
    amptk drop \
      ~{arguments} \
      ~{if (input_otu_file) then "--input" else ""} \
      ~{if (reads) then "--reads" else ""} \
      ~{if (list) then "--list" else ""} \
      ~{if (in_file_one) then "--file" else ""} \
      ~{if (out) then "--out" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_otu_file: "Input OTU file (.cluster.otus.fa) (FASTA)"
    reads: "Demultiplexed reads (.demux.fq) (FASTQ)"
    list: "List of OTU names to remove, separate by space"
    in_file_one: "List of OTU names to remove in a file, one per line"
    out: "Output file name. Default: amptk-drop"
    arguments: ""
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}