version 1.0

task MethylpyFilterAllc {
  input {
    Array[String] all_c_files
    Array[String] output_files
    String? num_procs
    Array[String] mc_type
    Int? min_cov
    Int? max_cov
    Array[Int] max_mismatch
    Array[Int] max_mismatch_frac
    String? compress_output
    Array[String] chrom_s
  }
  command <<<
    methylpy filter-allc \
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
  parameter_meta {
    all_c_files: "allc files to filter. (default: None)"
    output_files: "Name of output files. Each output file matches each allc file. (default: None)"
    num_procs: "Number of processors you wish to use to parallelize this function (default: 1)"
    mc_type: "List of space separated cytosine nucleotide contexts for sites to be included in output file. These classifications may use the wildcards H (indicating anything but a G) and N (indicating any nucleotide). (default: None)"
    min_cov: "Minimum number of reads that must cover a site for it to be included in the output file. (default: 0)"
    max_cov: "Maximum number of reads that must cover a site for it to be included in the output file. By default this cutoff is not applied. (default: None)"
    max_mismatch: "Maximum numbers of mismatch basecalls allowed in each nucleotide in the sequence context of a site for it to be included in output file. If the sequence context has three nucleotides, an example of this option is \"0 1 2\". It requires no mismatch basecall at the first nucleotide, at most one mismatch basecall at the second nucleotide, and at most two at the third nucleotide for a site to be reported. (default: None)"
    max_mismatch_frac: "Maximum fraction of mismatch basecalls out of unambiguous basecalls allowed in each nucleotide in the sequence context of a site for it to be included in output file. If the sequence context has three nucleotides, an example of this option is \"0 0 0.1\". It requires no mismatch basecall at the first and second nucleotide, and at most 10% mismatches out of unambiguous basecalls at the third nucleotide for a site to be reported. (default: None)"
    compress_output: "Boolean indicating whether to compress (by gzip) the final output (default: True)"
    chrom_s: "Space separated listing of chromosomes to be included in the output. By default, data of all chromosomes in input allc file will be included. (default: None)"
  }
}