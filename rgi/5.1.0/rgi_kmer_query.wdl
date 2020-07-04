version 1.0

task RgiKmerQuery {
  input {
    String? o
    String? input_file_file
    Boolean? bwt
    Boolean? specify_input_rgi
    Boolean? fast_a
    String? km_er_size
    Int? minimum
    String? threads
    String? output_file_name
    Boolean? local
    Boolean? debug
    String var_11
  }
  command <<<
    rgi kmer_query \
      ~{var_11} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(input_file_file) then ("--input " +  '"' + input_file_file + '"') else ""} \
      ~{true="--bwt" false="" bwt} \
      ~{true="--rgi" false="" specify_input_rgi} \
      ~{true="--fasta" false="" fast_a} \
      ~{if defined(km_er_size) then ("--kmer_size " +  '"' + km_er_size + '"') else ""} \
      ~{if defined(minimum) then ("--minimum " +  '"' + minimum + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(output_file_name) then ("--output " +  '"' + output_file_name + '"') else ""} \
      ~{true="--local" false="" local} \
      ~{true="--debug" false="" debug}
  >>>
  parameter_meta {
    o: "[--local] [--debug]"
    input_file_file: "Input file (bam file from RGI*BWT, json file of RGI results, fasta file of sequences)"
    bwt: "Specify if the input file for analysis is a bam file generated from RGI*BWT"
    specify_input_rgi: "Specify if the input file is a RGI results json file"
    fast_a: "Specify if the input file is a fasta file of sequences"
    km_er_size: "length of k"
    minimum: "Minimum number of kmers in the called category for the classification to be made (default=10)."
    threads: "number of threads (CPUs) to use (default=1)"
    output_file_name: "Output file name."
    local: "use local database (default: uses database in executable directory)"
    debug: "debug mode"
    var_11: ""
  }
}