version 1.0

task MethylpyMergeallc {
  input {
    Array[String] all_c_files
    File? output_file
    Int? num_procs
    Boolean? compress_output
    Boolean? skip_snp_info
    Int? mini_batch
  }
  command <<<
    methylpy merge_allc \
      ~{if defined(all_c_files) then ("--allc-files " +  '"' + all_c_files + '"') else ""} \
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""} \
      ~{if defined(num_procs) then ("--num-procs " +  '"' + num_procs + '"') else ""} \
      ~{if defined(compress_output) then ("--compress-output " +  '"' + compress_output + '"') else ""} \
      ~{if defined(skip_snp_info) then ("--skip-snp-info " +  '"' + skip_snp_info + '"') else ""} \
      ~{if defined(mini_batch) then ("--mini-batch " +  '"' + mini_batch + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    all_c_files: "List of allc files to merge. (default: None)"
    output_file: "String indicating the name of output file (default:\\nNone)"
    num_procs: "Number of processors to use (default: 1)"
    compress_output: "Boolean indicating whether to compress (by gzip) the\\nfinal output (default: True)"
    skip_snp_info: "Boolean indicating whether to skip the merging of SNP\\ninformation (default: True)"
    mini_batch: "The maximum number of allc files to be merged at the\\nsame time. Since OS or python may limit the number of\\nfiles that can be open at once, value larger than 200\\nis not recommended (default: 100)\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}