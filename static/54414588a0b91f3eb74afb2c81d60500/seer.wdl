version 1.0

task Seer {
  input {
    Boolean? arg_dsm_kmer
    Boolean? _arg_metadata
    String? mds_values_kmds
    String? co_var_file
    String? co_var_list
    String? threads
    Boolean? no_filtering
    String? max_length
    String? maf
    String? min_words
    String? chisq
    String? pval
    Boolean? print_samples
  }
  command <<<
    seer \
      ~{true="-k" false="" arg_dsm_kmer} \
      ~{true="-p" false="" _arg_metadata} \
      ~{if defined(mds_values_kmds) then ("--struct " +  '"' + mds_values_kmds + '"') else ""} \
      ~{if defined(co_var_file) then ("--covar_file " +  '"' + co_var_file + '"') else ""} \
      ~{if defined(co_var_list) then ("--covar_list " +  '"' + co_var_list + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{true="--no_filtering" false="" no_filtering} \
      ~{if defined(max_length) then ("--max_length " +  '"' + max_length + '"') else ""} \
      ~{if defined(maf) then ("--maf " +  '"' + maf + '"') else ""} \
      ~{if defined(min_words) then ("--min_words " +  '"' + min_words + '"') else ""} \
      ~{if defined(chisq) then ("--chisq " +  '"' + chisq + '"') else ""} \
      ~{if defined(pval) then ("--pval " +  '"' + pval + '"') else ""} \
      ~{true="--print_samples" false="" print_samples}
  >>>
  parameter_meta {
    arg_dsm_kmer: "[ --kmers ] arg       dsm kmer output file"
    _arg_metadata: "[ --pheno ] arg       .pheno metadata"
    mds_values_kmds: "mds values from kmds"
    co_var_file: "file containing covariates"
    co_var_list: "list of columns covariates to use. Format is 1,2q,3  (use q for quantitative)"
    threads: "(=1)       number of threads. Suggested: 8"
    no_filtering: "turn off all filtering and perform tests on all  kmers input"
    max_length: "(=100)  maximum kmer length"
    maf: "(=0.01)        minimum kmer frequency"
    min_words: "minimum kmer occurences. Overrides --maf"
    chisq: "(=10e-5)     p-value threshold for initial chi squared test. Set  to 1 to show all"
    pval: "(=10e-8)      p-value threshold for final logistic test. Set to 1  to show all"
    print_samples: "print lists of samples significant kmers were found  in"
  }
}