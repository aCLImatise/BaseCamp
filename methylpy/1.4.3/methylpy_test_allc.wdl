version 1.0

task MethylpyTestallc {
  input {
    File? all_c_file
    String? sample
    Float? unmethylated_control
    File? path_to_output
    Int? num_procs
    Int? min_cov
    Boolean? compress_output
    Float? sig_cut_off
    Int? sort_mem
    Boolean? remove_chr_prefix
  }
  command <<<
    methylpy test_allc \
      ~{if defined(all_c_file) then ("--allc-file " +  '"' + all_c_file + '"') else ""} \
      ~{if defined(sample) then ("--sample " +  '"' + sample + '"') else ""} \
      ~{if defined(unmethylated_control) then ("--unmethylated-control " +  '"' + unmethylated_control + '"') else ""} \
      ~{if defined(path_to_output) then ("--path-to-output " +  '"' + path_to_output + '"') else ""} \
      ~{if defined(num_procs) then ("--num-procs " +  '"' + num_procs + '"') else ""} \
      ~{if defined(min_cov) then ("--min-cov " +  '"' + min_cov + '"') else ""} \
      ~{if defined(compress_output) then ("--compress-output " +  '"' + compress_output + '"') else ""} \
      ~{if defined(sig_cut_off) then ("--sig-cutoff " +  '"' + sig_cut_off + '"') else ""} \
      ~{if defined(sort_mem) then ("--sort-mem " +  '"' + sort_mem + '"') else ""} \
      ~{if defined(remove_chr_prefix) then ("--remove-chr-prefix " +  '"' + remove_chr_prefix + '"') else ""}
  >>>
  parameter_meta {
    all_c_file: "allc file to be tested. (default: None)"
    sample: "sample name (default: None)"
    unmethylated_control: "name of the chromosome/region that you want to use to\\nestimate the non-conversion rate of your sample, or\\nthe non-conversion rate you would like to use.\\nConsequently, control is either a string, or a\\ndecimal. If control is a string then it should be in\\nthe following format: \\\"chrom:start-end\\\". If you would\\nlike to specify an entire chromosome simply use\\n\\\"chrom:\\\" (default: None)"
    path_to_output: "Path to a directory where you would like the output to\\nbe stored. The default is the same directory as the\\ninput fastqs. (default: )"
    num_procs: "Number of processors you wish to use to parallelize\\nthis function (default: 1)"
    min_cov: "Minimum number of reads that must cover a site for it\\nto be tested. (default: 2)"
    compress_output: "Boolean indicating whether to compress (by gzip) the\\nfinal output (default: True)"
    sig_cut_off: "Float indicating at what FDR you want to consider a\\nresult significant. (default: 0.01)"
    sort_mem: "Parameter to pass to unix sort with -S/--buffer-size\\ncommand (default: 500M)"
    remove_chr_prefix: "Boolean indicates whether to remove in the final\\noutput the \\\"chr\\\" prefix in the chromosome name\\n(default: True)\\n"
  }
  output {
    File out_stdout = stdout()
    File out_path_to_output = "${in_path_to_output}"
  }
}