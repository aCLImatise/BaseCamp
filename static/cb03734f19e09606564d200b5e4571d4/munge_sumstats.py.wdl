version 1.0

task MungeSumstatspy {
  input {
    File? sum_stats
    Int? sample_size_option
    Int? n_cas
    Int? n_con
    File? out
    Int? info_min
    Int? maf_min
    Boolean? dane_r
    Boolean? no_alleles
    File? merge_alleles
    Int? n_min
    String? n_col
    String? n_cas_col
    String? n_con_col
    Int? a_one
    Int? a_two
    String? name_pvalue_name_ldscunderstands_nb_case
    String? frq
    Int? signed_sum_stats
    String? info
    String? info_list
    String? n_study
    Int? n_study_min
    String? ignore
    Boolean? a_one_inc
    Boolean? keep_maf
    String format_dot
    String chunksize_dot
  }
  command <<<
    munge_sumstats_py \
      ~{format_dot} \
      ~{chunksize_dot} \
      ~{if defined(sum_stats) then ("--sumstats " +  '"' + sum_stats + '"') else ""} \
      ~{if defined(sample_size_option) then ("--N " +  '"' + sample_size_option + '"') else ""} \
      ~{if defined(n_cas) then ("--N-cas " +  '"' + n_cas + '"') else ""} \
      ~{if defined(n_con) then ("--N-con " +  '"' + n_con + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(info_min) then ("--info-min " +  '"' + info_min + '"') else ""} \
      ~{if defined(maf_min) then ("--maf-min " +  '"' + maf_min + '"') else ""} \
      ~{if (dane_r) then "--daner" else ""} \
      ~{if (no_alleles) then "--no-alleles" else ""} \
      ~{if defined(merge_alleles) then ("--merge-alleles " +  '"' + merge_alleles + '"') else ""} \
      ~{if defined(n_min) then ("--n-min " +  '"' + n_min + '"') else ""} \
      ~{if defined(n_col) then ("--N-col " +  '"' + n_col + '"') else ""} \
      ~{if defined(n_cas_col) then ("--N-cas-col " +  '"' + n_cas_col + '"') else ""} \
      ~{if defined(n_con_col) then ("--N-con-col " +  '"' + n_con_col + '"') else ""} \
      ~{if defined(a_one) then ("--a1 " +  '"' + a_one + '"') else ""} \
      ~{if defined(a_two) then ("--a2 " +  '"' + a_two + '"') else ""} \
      ~{if defined(name_pvalue_name_ldscunderstands_nb_case) then ("--p " +  '"' + name_pvalue_name_ldscunderstands_nb_case + '"') else ""} \
      ~{if defined(frq) then ("--frq " +  '"' + frq + '"') else ""} \
      ~{if defined(signed_sum_stats) then ("--signed-sumstats " +  '"' + signed_sum_stats + '"') else ""} \
      ~{if defined(info) then ("--info " +  '"' + info + '"') else ""} \
      ~{if defined(info_list) then ("--info-list " +  '"' + info_list + '"') else ""} \
      ~{if defined(n_study) then ("--nstudy " +  '"' + n_study + '"') else ""} \
      ~{if defined(n_study_min) then ("--nstudy-min " +  '"' + n_study_min + '"') else ""} \
      ~{if defined(ignore) then ("--ignore " +  '"' + ignore + '"') else ""} \
      ~{if (a_one_inc) then "--a1-inc" else ""} \
      ~{if (keep_maf) then "--keep-maf" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    sum_stats: "Input filename."
    sample_size_option: "Sample size If this option is not set, will try to\\ninfer the sample size from the input file. If the\\ninput file contains a sample size column, and this\\nflag is set, the argument to this flag has priority."
    n_cas: "Number of cases. If this option is not set, will try\\nto infer the number of cases from the input file. If\\nthe input file contains a number of cases column, and\\nthis flag is set, the argument to this flag has\\npriority."
    n_con: "Number of controls. If this option is not set, will\\ntry to infer the number of controls from the input\\nfile. If the input file contains a number of controls\\ncolumn, and this flag is set, the argument to this\\nflag has priority."
    out: "Output filename prefix."
    info_min: "Minimum INFO score."
    maf_min: "Minimum MAF."
    dane_r: "Use this flag to parse Stephan Ripke's daner* file"
    no_alleles: "Don't require alleles. Useful if only unsigned summary\\nstatistics are available and the goal is h2 /\\npartitioned h2 estimation rather than rg estimation."
    merge_alleles: "Same as --merge, except the file should have three\\ncolumns: SNP, A1, A2, and all alleles will be matched\\nto the --merge-alleles file alleles."
    n_min: "Minimum N (sample size). Default is (90th percentile\\nN) / 2."
    n_col: "Name of N column (if not a name that ldsc\\nunderstands). NB: case insensitive."
    n_cas_col: "Name of N column (if not a name that ldsc\\nunderstands). NB: case insensitive."
    n_con_col: "Name of N column (if not a name that ldsc\\nunderstands). NB: case insensitive."
    a_one: "Name of A1 column (if not a name that ldsc\\nunderstands). NB: case insensitive."
    a_two: "Name of A2 column (if not a name that ldsc\\nunderstands). NB: case insensitive."
    name_pvalue_name_ldscunderstands_nb_case: "Name of p-value column (if not a name that ldsc\\nunderstands). NB: case insensitive."
    frq: "Name of FRQ or MAF column (if not a name that ldsc\\nunderstands). NB: case insensitive."
    signed_sum_stats: "Name of signed sumstat column, comma null value (e.g.,\\nZ,0 or OR,1). NB: case insensitive."
    info: "Name of INFO column (if not a name that ldsc\\nunderstands). NB: case insensitive."
    info_list: "Comma-separated list of INFO columns. Will filter on\\nthe mean. NB: case insensitive."
    n_study: "Name of NSTUDY column (if not a name that ldsc\\nunderstands). NB: case insensitive."
    n_study_min: "Minimum # of studies. Default is to remove everything\\nbelow the max, unless there is an N column, in which\\ncase do nothing."
    ignore: "Comma-separated list of column names to ignore."
    a_one_inc: "A1 is the increasing allele."
    keep_maf: "Keep the MAF column (if one exists)."
    format_dot: "--daner-n             Use this flag to parse more recent daner* formatted"
    chunksize_dot: "--snp SNP             Name of SNP column (if not a name that ldsc"
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}