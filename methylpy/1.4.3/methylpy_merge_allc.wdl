version 1.0

task MethylpyMergeAllc {
  input {
    Array[String] all_c_files
    String? output_file
    String? num_procs
    String? compress_output
    String? skip_snp_info
    Int? mini_batch
  }
  command <<<
    methylpy merge-allc \
      ~{if defined(all_c_files) then ("--allc-files " +  '"' + all_c_files + '"') else ""} \
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""} \
      ~{if defined(num_procs) then ("--num-procs " +  '"' + num_procs + '"') else ""} \
      ~{if defined(compress_output) then ("--compress-output " +  '"' + compress_output + '"') else ""} \
      ~{if defined(skip_snp_info) then ("--skip-snp-info " +  '"' + skip_snp_info + '"') else ""} \
      ~{if defined(mini_batch) then ("--mini-batch " +  '"' + mini_batch + '"') else ""}
  >>>
  parameter_meta {
    all_c_files: "List of allc files to merge. (default: None)"
    output_file: "String indicating the name of output file (default: None)"
    num_procs: "Number of processors to use (default: 1)"
    compress_output: "Boolean indicating whether to compress (by gzip) the final output (default: True)"
    skip_snp_info: "Boolean indicating whether to skip the merging of SNP information (default: True)"
    mini_batch: "The maximum number of allc files to be merged at the same time. Since OS or python may limit the number of files that can be open at once, value larger than 200 is not recommended (default: 100)"
  }
}