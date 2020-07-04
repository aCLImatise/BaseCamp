version 1.0

task Ldsc.py {
  input {
    Boolean? print_cov
    Boolean? print_delete_vals
    String? chunk_size
    Boolean? pickle
    Boolean? yes_really
    Boolean? invert_anyway
    String? n_blocks
    Boolean? not_m_five_five_zero
    Boolean? return_silly_things
    Boolean? no_check_alleles
    String? samp_prev
    String? pop_prev
    String? out
    String? b_file
    Boolean? l_two
    String? extract
  }
  command <<<
    ldsc.py \
      ~{true="--print-cov" false="" print_cov} \
      ~{true="--print-delete-vals" false="" print_delete_vals} \
      ~{if defined(chunk_size) then ("--chunk-size " +  '"' + chunk_size + '"') else ""} \
      ~{true="--pickle" false="" pickle} \
      ~{true="--yes-really" false="" yes_really} \
      ~{true="--invert-anyway" false="" invert_anyway} \
      ~{if defined(n_blocks) then ("--n-blocks " +  '"' + n_blocks + '"') else ""} \
      ~{true="--not-M-5-50" false="" not_m_five_five_zero} \
      ~{true="--return-silly-things" false="" return_silly_things} \
      ~{true="--no-check-alleles" false="" no_check_alleles} \
      ~{if defined(samp_prev) then ("--samp-prev " +  '"' + samp_prev + '"') else ""} \
      ~{if defined(pop_prev) then ("--pop-prev " +  '"' + pop_prev + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(b_file) then ("--bfile " +  '"' + b_file + '"') else ""} \
      ~{true="--l2" false="" l_two} \
      ~{if defined(extract) then ("--extract " +  '"' + extract + '"') else ""}
  >>>
  parameter_meta {
    print_cov: "For use with --h2/--rg. This flag tells LDSC to print the covaraince matrix of the estimates."
    print_delete_vals: "If this flag is set, LDSC will print the block jackknife delete-values (i.e., the regression coefficeints estimated from the data with a block removed). The delete-values are formatted as a matrix with (# of jackknife blocks) rows and (# of LD Scores) columns."
    chunk_size: "Chunk size for LD Score calculation. Use the default."
    pickle: "Store .l2.ldscore files as pickles instead of gzipped tab-delimited text."
    yes_really: "Yes, I really want to compute whole-chromosome LD Score."
    invert_anyway: "Force LDSC to attempt to invert ill-conditioned matrices."
    n_blocks: "Number of block jackknife blocks."
    not_m_five_five_zero: "This flag tells LDSC to use the .l2.M file instead of the .l2.M_5_50 file."
    return_silly_things: "Force ldsc to return silly genetic correlation estimates."
    no_check_alleles: "For rg estimation, skip checking whether the alleles match. This check is redundant for pairs of chisq files generated using munge_sumstats.py and the same argument to the --merge-alleles flag."
    samp_prev: "Sample prevalence of binary phenotype (for conversion to liability scale)."
    pop_prev: "Population prevalence of binary phenotype (for conversion to liability scale)."
    out: ""
    b_file: ""
    l_two: ""
    extract: ""
  }
}