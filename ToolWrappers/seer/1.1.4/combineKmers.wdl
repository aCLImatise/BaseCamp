version 1.0

task CombineKmers {
  input {
    Boolean? arg_file_name
    File? arg_output_file
    Int? min_samples
    String printed
  }
  command <<<
    combineKmers \
      ~{printed} \
      ~{if (arg_file_name) then "-r" else ""} \
      ~{if (arg_output_file) then "-o" else ""} \
      ~{if defined(min_samples) then ("--min_samples " +  '"' + min_samples + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    arg_file_name: "[ --samples ] arg    file with tab separated sample name and kmer file"
    arg_output_file: "[ --output ] arg     output file prefix"
    min_samples: "(=1)  minimum number of samples kmer must occur in to be"
    printed: "-h [ --help ]           full help message"
  }
  output {
    File out_stdout = stdout()
    File out_arg_output_file = "${in_arg_output_file}"
  }
}