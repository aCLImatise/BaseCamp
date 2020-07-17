version 1.0

task CombineKmers {
  input {
    Boolean? arg_file_tab
    Boolean? arg_output_file
    String? min_samples
  }
  command <<<
    combineKmers \
      ~{true="-r" false="" arg_file_tab} \
      ~{true="-o" false="" arg_output_file} \
      ~{if defined(min_samples) then ("--min_samples " +  '"' + min_samples + '"') else ""}
  >>>
  parameter_meta {
    arg_file_tab: "[ --samples ] arg    file with tab separated sample name and kmer file"
    arg_output_file: "[ --output ] arg     output file prefix"
    min_samples: "(=1)  minimum number of samples kmer must occur in to be  printed"
  }
}