version 1.0

task MethylpyFilterallc {
  input {
    Array[String] all_c_files
    File? output_files
    Int? num_procs
    File? mc_type
    Int? min_cov
    Int? max_cov
    File? max_mismatch
    File? max_mismatch_frac
    Boolean? compress_output
    Array[String] chrom_s
  }
  command <<<
    methylpy filter_allc \
      ~{if defined(all_c_files) then ("--allc-files " +  '"' + all_c_files + '"') else ""} \
      ~{if defined(output_files) then ("--output-files " +  '"' + output_files + '"') else ""} \
      ~{if defined(num_procs) then ("--num-procs " +  '"' + num_procs + '"') else ""} \
      ~{if defined(mc_type) then ("--mc-type " +  '"' + mc_type + '"') else ""} \
      ~{if defined(min_cov) then ("--min-cov " +  '"' + min_cov + '"') else ""} \
      ~{if defined(max_cov) then ("--max-cov " +  '"' + max_cov + '"') else ""} \
      ~{if defined(max_mismatch) then ("--max-mismatch " +  '"' + max_mismatch + '"') else ""} \
      ~{if defined(max_mismatch_frac) then ("--max-mismatch-frac " +  '"' + max_mismatch_frac + '"') else ""} \
      ~{if defined(compress_output) then ("--compress-output " +  '"' + compress_output + '"') else ""} \
      ~{if defined(chrom_s) then ("--chroms " +  '"' + chrom_s + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    all_c_files: "allc files to filter. (default: None)"
    output_files: "Name of output files. Each output file matches each\\nallc file. (default: None)"
    num_procs: "Number of processors you wish to use to parallelize\\nthis function (default: 1)"
    mc_type: "List of space separated cytosine nucleotide contexts\\nfor sites to be included in output file. These\\nclassifications may use the wildcards H (indicating\\nanything but a G) and N (indicating any nucleotide).\\n(default: None)"
    min_cov: "Minimum number of reads that must cover a site for it\\nto be included in the output file. (default: 0)"
    max_cov: "Maximum number of reads that must cover a site for it\\nto be included in the output file. By default this\\ncutoff is not applied. (default: None)"
    max_mismatch: "Maximum numbers of mismatch basecalls allowed in each\\nnucleotide in the sequence context of a site for it to\\nbe included in output file. If the sequence context\\nhas three nucleotides, an example of this option is \\\"0\\n1 2\\\". It requires no mismatch basecall at the first\\nnucleotide, at most one mismatch basecall at the\\nsecond nucleotide, and at most two at the third\\nnucleotide for a site to be reported. (default: None)"
    max_mismatch_frac: "Maximum fraction of mismatch basecalls out of\\nunambiguous basecalls allowed in each nucleotide in\\nthe sequence context of a site for it to be included\\nin output file. If the sequence context has three\\nnucleotides, an example of this option is \\\"0 0 0.1\\\".\\nIt requires no mismatch basecall at the first and\\nsecond nucleotide, and at most 10% mismatches out of\\nunambiguous basecalls at the third nucleotide for a\\nsite to be reported. (default: None)"
    compress_output: "Boolean indicating whether to compress (by gzip) the\\nfinal output (default: True)"
    chrom_s: "Space separated listing of chromosomes to be included\\nin the output. By default, data of all chromosomes in\\ninput allc file will be included. (default: None)\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_files = "${in_output_files}"
    File out_mc_type = "${in_mc_type}"
    File out_max_mismatch = "${in_max_mismatch}"
    File out_max_mismatch_frac = "${in_max_mismatch_frac}"
  }
}