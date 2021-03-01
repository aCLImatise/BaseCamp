version 1.0

task DsComputeGCCoverage {
  input {
    Array[String] fasta_files_want
    Int? window_size
    Array[String] bedgraph_files_output
    Int genome_two_dot_fa
    Int genome_two
  }
  command <<<
    dsComputeGCCoverage \
      ~{genome_two_dot_fa} \
      ~{genome_two} \
      ~{if defined(fasta_files_want) then ("--input " +  '"' + fasta_files_want + '"') else ""} \
      ~{if defined(window_size) then ("--windowSize " +  '"' + window_size + '"') else ""} \
      ~{if defined(bedgraph_files_output) then ("--output " +  '"' + bedgraph_files_output + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    fasta_files_want: "Fasta files from which you want the GC content to be\\ncalculated."
    window_size: "Size of the window used to binify the genome and\\ncalculate the GC content. Default: 1000."
    bedgraph_files_output: "bedGraph file(s) output prefix name(s) ('.bedGraph' is\\nautomatically added at the end of the given prefix,\\none bedGraph per input file).\\n"
    genome_two_dot_fa: ""
    genome_two: ""
  }
  output {
    File out_stdout = stdout()
  }
}