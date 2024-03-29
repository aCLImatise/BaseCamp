version 1.0

task RgiKmerQuery {
  input {
    File? input_file_bam
    Boolean? bwt
    Boolean? specify_is_rgi
    Boolean? fast_a
    Int? km_er_size
    Int? minimum
    Int? threads
    File? output_file_name
    Boolean? local
    Boolean? debug
    String var_10
  }
  command <<<
    rgi kmer_query \
      ~{var_10} \
      ~{if defined(input_file_bam) then ("--input " +  '"' + input_file_bam + '"') else ""} \
      ~{if (bwt) then "--bwt" else ""} \
      ~{if (specify_is_rgi) then "--rgi" else ""} \
      ~{if (fast_a) then "--fasta" else ""} \
      ~{if defined(km_er_size) then ("--kmer_size " +  '"' + km_er_size + '"') else ""} \
      ~{if defined(minimum) then ("--minimum " +  '"' + minimum + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(output_file_name) then ("--output " +  '"' + output_file_name + '"') else ""} \
      ~{if (local) then "--local" else ""} \
      ~{if (debug) then "--debug" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_file_bam: "Input file (bam file from RGI*BWT, json file of RGI\\nresults, fasta file of sequences)"
    bwt: "Specify if the input file for analysis is a bam file\\ngenerated from RGI*BWT"
    specify_is_rgi: "Specify if the input file is a RGI results json file"
    fast_a: "Specify if the input file is a fasta file of sequences"
    km_er_size: "length of k"
    minimum: "Minimum number of kmers in the called category for the\\nclassification to be made (default=10)."
    threads: "number of threads (CPUs) to use (default=1)"
    output_file_name: "Output file name."
    local: "use local database (default: uses database in\\nexecutable directory)"
    debug: "debug mode"
    var_10: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_file_name = "${in_output_file_name}"
  }
}