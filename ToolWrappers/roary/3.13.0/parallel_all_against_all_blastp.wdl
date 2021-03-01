version 1.0

task ParallelAllAgainstAllBlastp {
  input {
    Int? number_of_threads
    File? output_filename_blast
    String? makeblastdb_executable
    String? blastp_executable
    Boolean? verbose_output_stdout
    File file_dot_faa
  }
  command <<<
    parallel_all_against_all_blastp \
      ~{file_dot_faa} \
      ~{if defined(number_of_threads) then ("-p " +  '"' + number_of_threads + '"') else ""} \
      ~{if defined(output_filename_blast) then ("-o " +  '"' + output_filename_blast + '"') else ""} \
      ~{if defined(makeblastdb_executable) then ("-m " +  '"' + makeblastdb_executable + '"') else ""} \
      ~{if defined(blastp_executable) then ("-b " +  '"' + blastp_executable + '"') else ""} \
      ~{if (verbose_output_stdout) then "-v" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    number_of_threads: "number of threads [1]"
    output_filename_blast: "output filename for blast results [blast_results]"
    makeblastdb_executable: "makeblastdb executable [makeblastdb]"
    blastp_executable: "blastp executable [blastp]"
    verbose_output_stdout: "verbose output to STDOUT"
    file_dot_faa: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_filename_blast = "${in_output_filename_blast}"
  }
}