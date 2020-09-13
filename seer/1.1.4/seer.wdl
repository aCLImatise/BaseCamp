version 1.0

task Seer {
  input {
    File? arg_dsm_kmer
    Boolean? arg_pheno_metadata
    String? mds_values_kmds
    File? co_var_file
    Int? co_var_list
    Int? threads
    Boolean? no_filtering
    Int? max_length
    Float? maf
    String? min_words
    Float? chisq
    Float? pval
    Boolean? print_samples
    String in
  }
  command <<<
    seer \
      ~{in} \
      ~{if (arg_dsm_kmer) then "-k" else ""} \
      ~{if (arg_pheno_metadata) then "-p" else ""} \
      ~{if defined(mds_values_kmds) then ("--struct " +  '"' + mds_values_kmds + '"') else ""} \
      ~{if defined(co_var_file) then ("--covar_file " +  '"' + co_var_file + '"') else ""} \
      ~{if defined(co_var_list) then ("--covar_list " +  '"' + co_var_list + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if (no_filtering) then "--no_filtering" else ""} \
      ~{if defined(max_length) then ("--max_length " +  '"' + max_length + '"') else ""} \
      ~{if defined(maf) then ("--maf " +  '"' + maf + '"') else ""} \
      ~{if defined(min_words) then ("--min_words " +  '"' + min_words + '"') else ""} \
      ~{if defined(chisq) then ("--chisq " +  '"' + chisq + '"') else ""} \
      ~{if defined(pval) then ("--pval " +  '"' + pval + '"') else ""} \
      ~{if (print_samples) then "--print_samples" else ""}
  >>>
  parameter_meta {
    arg_dsm_kmer: "[ --kmers ] arg       dsm kmer output file"
    arg_pheno_metadata: "[ --pheno ] arg       .pheno metadata"
    mds_values_kmds: "mds values from kmds"
    co_var_file: "file containing covariates"
    co_var_list: "list of columns covariates to use. Format is 1,2q,3\\n(use q for quantitative)"
    threads: "(=1)       number of threads. Suggested: 8"
    no_filtering: "turn off all filtering and perform tests on all\\nkmers input"
    max_length: "(=100)  maximum kmer length"
    maf: "(=0.01)        minimum kmer frequency"
    min_words: "minimum kmer occurences. Overrides --maf"
    chisq: "(=10e-5)     p-value threshold for initial chi squared test. Set\\nto 1 to show all"
    pval: "(=10e-8)      p-value threshold for final logistic test. Set to 1\\nto show all"
    print_samples: "print lists of samples significant kmers were found"
    in: "--version                prints version and exits"
  }
  output {
    File out_stdout = stdout()
    File out_arg_dsm_kmer = "${in_arg_dsm_kmer}"
  }
}