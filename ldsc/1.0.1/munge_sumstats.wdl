version 1.0

task MungeSumstats.py {
  input {
    String? sum_stats
    String? sample_size_option
    String? n_cas
    String? n_con
    String? out
    String? info_min
    String? maf_min
    Boolean? dane_r
    Boolean? dane_r_n
    Boolean? no_alleles
    String? merge_alleles
    String? n_min
    String? chunksize
    String? snp
    String? n_col
    String? n_cas_col
    String? n_con_col
    String? a_one
    String? a_two
    String? name_pvalue_name_ldsc_understands_nb_case
    String? frq
    String? signed_sum_stats
    String? info
    String? info_list
    String? n_study
    String? n_study_min
    String? ignore
    Boolean? a_one_inc
    Boolean? keep_maf
  }
  command <<<
    munge_sumstats.py \
      ~{if defined(sum_stats) then ("--sumstats " +  '"' + sum_stats + '"') else ""} \
      ~{if defined(sample_size_option) then ("--N " +  '"' + sample_size_option + '"') else ""} \
      ~{if defined(n_cas) then ("--N-cas " +  '"' + n_cas + '"') else ""} \
      ~{if defined(n_con) then ("--N-con " +  '"' + n_con + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(info_min) then ("--info-min " +  '"' + info_min + '"') else ""} \
      ~{if defined(maf_min) then ("--maf-min " +  '"' + maf_min + '"') else ""} \
      ~{true="--daner" false="" dane_r} \
      ~{true="--daner-n" false="" dane_r_n} \
      ~{true="--no-alleles" false="" no_alleles} \
      ~{if defined(merge_alleles) then ("--merge-alleles " +  '"' + merge_alleles + '"') else ""} \
      ~{if defined(n_min) then ("--n-min " +  '"' + n_min + '"') else ""} \
      ~{if defined(chunksize) then ("--chunksize " +  '"' + chunksize + '"') else ""} \
      ~{if defined(snp) then ("--snp " +  '"' + snp + '"') else ""} \
      ~{if defined(n_col) then ("--N-col " +  '"' + n_col + '"') else ""} \
      ~{if defined(n_cas_col) then ("--N-cas-col " +  '"' + n_cas_col + '"') else ""} \
      ~{if defined(n_con_col) then ("--N-con-col " +  '"' + n_con_col + '"') else ""} \
      ~{if defined(a_one) then ("--a1 " +  '"' + a_one + '"') else ""} \
      ~{if defined(a_two) then ("--a2 " +  '"' + a_two + '"') else ""} \
      ~{if defined(name_pvalue_name_ldsc_understands_nb_case) then ("--p " +  '"' + name_pvalue_name_ldsc_understands_nb_case + '"') else ""} \
      ~{if defined(frq) then ("--frq " +  '"' + frq + '"') else ""} \
      ~{if defined(signed_sum_stats) then ("--signed-sumstats " +  '"' + signed_sum_stats + '"') else ""} \
      ~{if defined(info) then ("--info " +  '"' + info + '"') else ""} \
      ~{if defined(info_list) then ("--info-list " +  '"' + info_list + '"') else ""} \
      ~{if defined(n_study) then ("--nstudy " +  '"' + n_study + '"') else ""} \
      ~{if defined(n_study_min) then ("--nstudy-min " +  '"' + n_study_min + '"') else ""} \
      ~{if defined(ignore) then ("--ignore " +  '"' + ignore + '"') else ""} \
      ~{true="--a1-inc" false="" a_one_inc} \
      ~{true="--keep-maf" false="" keep_maf}
  >>>
  parameter_meta {
    sum_stats: "Input filename."
    sample_size_option: "Sample size If this option is not set, will try to infer the sample size from the input file. If the input file contains a sample size column, and this flag is set, the argument to this flag has priority."
    n_cas: "Number of cases. If this option is not set, will try to infer the number of cases from the input file. If the input file contains a number of cases column, and this flag is set, the argument to this flag has priority."
    n_con: "Number of controls. If this option is not set, will try to infer the number of controls from the input file. If the input file contains a number of controls column, and this flag is set, the argument to this flag has priority."
    out: "Output filename prefix."
    info_min: "Minimum INFO score."
    maf_min: "Minimum MAF."
    dane_r: "Use this flag to parse Stephan Ripke's daner* file format."
    dane_r_n: "Use this flag to parse more recent daner* formatted files, which include sample size column 'Nca' and 'Nco'."
    no_alleles: "Don't require alleles. Useful if only unsigned summary statistics are available and the goal is h2 / partitioned h2 estimation rather than rg estimation."
    merge_alleles: "Same as --merge, except the file should have three columns: SNP, A1, A2, and all alleles will be matched to the --merge-alleles file alleles."
    n_min: "Minimum N (sample size). Default is (90th percentile N) / 2."
    chunksize: "Chunksize."
    snp: "Name of SNP column (if not a name that ldsc understands). NB: case insensitive."
    n_col: "Name of N column (if not a name that ldsc understands). NB: case insensitive."
    n_cas_col: "Name of N column (if not a name that ldsc understands). NB: case insensitive."
    n_con_col: "Name of N column (if not a name that ldsc understands). NB: case insensitive."
    a_one: "Name of A1 column (if not a name that ldsc understands). NB: case insensitive."
    a_two: "Name of A2 column (if not a name that ldsc understands). NB: case insensitive."
    name_pvalue_name_ldsc_understands_nb_case: "Name of p-value column (if not a name that ldsc understands). NB: case insensitive."
    frq: "Name of FRQ or MAF column (if not a name that ldsc understands). NB: case insensitive."
    signed_sum_stats: "Name of signed sumstat column, comma null value (e.g., Z,0 or OR,1). NB: case insensitive."
    info: "Name of INFO column (if not a name that ldsc understands). NB: case insensitive."
    info_list: "Comma-separated list of INFO columns. Will filter on the mean. NB: case insensitive."
    n_study: "Name of NSTUDY column (if not a name that ldsc understands). NB: case insensitive."
    n_study_min: "Minimum # of studies. Default is to remove everything below the max, unless there is an N column, in which case do nothing."
    ignore: "Comma-separated list of column names to ignore."
    a_one_inc: "A1 is the increasing allele."
    keep_maf: "Keep the MAF column (if one exists)."
  }
}