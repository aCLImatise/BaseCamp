version 1.0

task Bwjoin {
  input {
    Boolean? input_path
    Boolean? fast_a_index
    File? outfile
    Boolean? ignore_contigs
  }
  command <<<
    bwjoin \
      ~{if (input_path) then "--input-path" else ""} \
      ~{if (fast_a_index) then "--fasta-index" else ""} \
      ~{if (outfile) then "--outfile" else ""} \
      ~{if (ignore_contigs) then "--ignore-contigs" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_path: "[dir]                           Path to the input bigwig files named [path]/<contig_name>.bw"
    fast_a_index: "[file]                         Fasta index file (.fai)"
    outfile: "[file]                             Path to the output .bw file produced. [default:'concatenated.bw']"
    ignore_contigs: "[comma separated list]      Comma separated list of contigs to ignore."
  }
  output {
    File out_stdout = stdout()
    File out_outfile = "${in_outfile}"
  }
}