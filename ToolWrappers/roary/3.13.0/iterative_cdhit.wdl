version 1.0

task IterativeCdhit {
  input {
    File? input_fasta_file
    Int? number_of_threads
    Int? number_of_isolates
    File? cdhit_output_filename
    File? output_filename_filtered
    Float? lower_bound_percentage
    Float? upper_bound_percentage
    Float? step_size_percentage
    Boolean? verbose_output_stdout
  }
  command <<<
    iterative_cdhit \
      ~{if defined(input_fasta_file) then ("-m " +  '"' + input_fasta_file + '"') else ""} \
      ~{if defined(number_of_threads) then ("-p " +  '"' + number_of_threads + '"') else ""} \
      ~{if defined(number_of_isolates) then ("-n " +  '"' + number_of_isolates + '"') else ""} \
      ~{if defined(cdhit_output_filename) then ("-c " +  '"' + cdhit_output_filename + '"') else ""} \
      ~{if defined(output_filename_filtered) then ("-f " +  '"' + output_filename_filtered + '"') else ""} \
      ~{if defined(lower_bound_percentage) then ("-l " +  '"' + lower_bound_percentage + '"') else ""} \
      ~{if defined(upper_bound_percentage) then ("-u " +  '"' + upper_bound_percentage + '"') else ""} \
      ~{if defined(step_size_percentage) then ("-s " +  '"' + step_size_percentage + '"') else ""} \
      ~{if (verbose_output_stdout) then "-v" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_fasta_file: "input FASTA file of protein sequences [_combined_files]"
    number_of_threads: "number of threads [1]"
    number_of_isolates: "number of isolates [1]"
    cdhit_output_filename: "cd-hit output filename [_clustered]"
    output_filename_filtered: "output filename for filtered sequences [_clustered_filtered.fa]"
    lower_bound_percentage: "lower bound percentage identity [98.0]"
    upper_bound_percentage: "upper bound percentage identity [99.0]"
    step_size_percentage: "step size for percentage identity [0.5]"
    verbose_output_stdout: "verbose output to STDOUT"
  }
  output {
    File out_stdout = stdout()
    File out_cdhit_output_filename = "${in_cdhit_output_filename}"
    File out_output_filename_filtered = "${in_output_filename_filtered}"
  }
}