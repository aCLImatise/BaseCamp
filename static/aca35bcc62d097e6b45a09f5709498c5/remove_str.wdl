version 1.0

task RemoveStr.py {
  input {
    String? input_fastq_file
    String? the_output_fastq_file
    String? str
    String? log
    String? overlap
    String? length
    String? km_er
    String? threshold
    String? author
    Boolean? quiet
    String? processes
  }
  command <<<
    remove_str.py \
      ~{if defined(input_fastq_file) then ("--input " +  '"' + input_fastq_file + '"') else ""} \
      ~{if defined(the_output_fastq_file) then ("--output " +  '"' + the_output_fastq_file + '"') else ""} \
      ~{if defined(str) then ("--str " +  '"' + str + '"') else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{if defined(overlap) then ("--overlap " +  '"' + overlap + '"') else ""} \
      ~{if defined(length) then ("--length " +  '"' + length + '"') else ""} \
      ~{if defined(km_er) then ("--kmer " +  '"' + km_er + '"') else ""} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""} \
      ~{if defined(author) then ("--author " +  '"' + author + '"') else ""} \
      ~{true="--quiet" false="" quiet} \
      ~{if defined(processes) then ("--processes " +  '"' + processes + '"') else ""}
  >>>
  parameter_meta {
    input_fastq_file: "The input FASTQ file."
    the_output_fastq_file: "The output FASTQ file."
    str: "The output FASTQ file containing the reads which are removed from the input due to high content of short tandem repeats (STR)."
    log: "It outputs a detailed log."
    overlap: "The length of region where the two consecutive windows are overlapping. Default is 12."
    length: "The length of the sliding window. Default is 24."
    km_er: "The length of the kmer used in computing the codelength. Default is 2."
    threshold: "Any window which compresses less this threshold is considered to contain a short tandem repeat and the read will be filtered out. Default is 1.4."
    author: "Daniel Nicorici, E-mail: Daniel.Nicorici@gmail.com"
    quiet: "Do not print status messages to console."
    processes: "Number of parallel processes/CPUs to be used for computations. In case of value 0 then the program will use all the CPUs which are found. The default value is 0."
  }
}