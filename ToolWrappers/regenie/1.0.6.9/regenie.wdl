version 1.0

task Regenie {
  input {
    Boolean? helpfull
    Int? step
    String? bed
    Int? pgen
    File? b_gen
    File? sample
    Boolean? ref_first
    File? keep
    File? remove
    File? extract
    String? pheno_col
    String? pheno_col_list
    File? co_var_file
    String? co_var_col
    String? co_var_col_list
    Boolean? bt
    Boolean? cc_one_two
    Int? b_size
    Int? cv
    Boolean? loo_cv
    Int? l_zero
    Int? lone
    Boolean? lowmem
    Int? lowmem_prefix
    Boolean? strict
    Boolean? print_prs
    String? out
    Int? threads
    File? pred
    Boolean? ignore_pred
    Boolean? use_prs
    Boolean? force_impute
    Boolean? write_samples
    Int? min_mac
    Boolean? split
    Boolean? firth
    Boolean? spa
    Float? p_thresh
    Int? chr
    String? chr_list
    Int? range
    String? test
    Boolean? gz
    Boolean? p
    File? exclude
    String variants
    String threshold
  }
  command <<<
    regenie \
      ~{variants} \
      ~{threshold} \
      ~{if (helpfull) then "--helpFull" else ""} \
      ~{if defined(step) then ("--step " +  '"' + step + '"') else ""} \
      ~{if defined(bed) then ("--bed " +  '"' + bed + '"') else ""} \
      ~{if defined(pgen) then ("--pgen " +  '"' + pgen + '"') else ""} \
      ~{if defined(b_gen) then ("--bgen " +  '"' + b_gen + '"') else ""} \
      ~{if defined(sample) then ("--sample " +  '"' + sample + '"') else ""} \
      ~{if (ref_first) then "--ref-first" else ""} \
      ~{if defined(keep) then ("--keep " +  '"' + keep + '"') else ""} \
      ~{if defined(remove) then ("--remove " +  '"' + remove + '"') else ""} \
      ~{if defined(extract) then ("--extract " +  '"' + extract + '"') else ""} \
      ~{if defined(pheno_col) then ("--phenoCol " +  '"' + pheno_col + '"') else ""} \
      ~{if defined(pheno_col_list) then ("--phenoColList " +  '"' + pheno_col_list + '"') else ""} \
      ~{if defined(co_var_file) then ("--covarFile " +  '"' + co_var_file + '"') else ""} \
      ~{if defined(co_var_col) then ("--covarCol " +  '"' + co_var_col + '"') else ""} \
      ~{if defined(co_var_col_list) then ("--covarColList " +  '"' + co_var_col_list + '"') else ""} \
      ~{if (bt) then "--bt" else ""} \
      ~{if (cc_one_two) then "--cc12" else ""} \
      ~{if defined(b_size) then ("--bsize " +  '"' + b_size + '"') else ""} \
      ~{if defined(cv) then ("--cv " +  '"' + cv + '"') else ""} \
      ~{if (loo_cv) then "--loocv" else ""} \
      ~{if defined(l_zero) then ("--l0 " +  '"' + l_zero + '"') else ""} \
      ~{if defined(lone) then ("--l1 " +  '"' + lone + '"') else ""} \
      ~{if (lowmem) then "--lowmem" else ""} \
      ~{if defined(lowmem_prefix) then ("--lowmem-prefix " +  '"' + lowmem_prefix + '"') else ""} \
      ~{if (strict) then "--strict" else ""} \
      ~{if (print_prs) then "--print-prs" else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(pred) then ("--pred " +  '"' + pred + '"') else ""} \
      ~{if (ignore_pred) then "--ignore-pred" else ""} \
      ~{if (use_prs) then "--use-prs" else ""} \
      ~{if (force_impute) then "--force-impute" else ""} \
      ~{if (write_samples) then "--write-samples" else ""} \
      ~{if defined(min_mac) then ("--minMAC " +  '"' + min_mac + '"') else ""} \
      ~{if (split) then "--split" else ""} \
      ~{if (firth) then "--firth" else ""} \
      ~{if (spa) then "--spa" else ""} \
      ~{if defined(p_thresh) then ("--pThresh " +  '"' + p_thresh + '"') else ""} \
      ~{if defined(chr) then ("--chr " +  '"' + chr + '"') else ""} \
      ~{if defined(chr_list) then ("--chrList " +  '"' + chr_list + '"') else ""} \
      ~{if defined(range) then ("--range " +  '"' + range + '"') else ""} \
      ~{if defined(test) then ("--test " +  '"' + test + '"') else ""} \
      ~{if (gz) then "--gz" else ""} \
      ~{if (p) then "-p" else ""} \
      ~{if defined(exclude) then ("--exclude " +  '"' + exclude + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/regenie:1.0.6.9--h485b6fc_0"
  }
  parameter_meta {
    helpfull: "print list of all available options"
    step: "specify if fitting null model (=1) or\\nassociation testing (=2)"
    bed: "prefix to PLINK .bed/.bim/.fam files"
    pgen: "prefix to PLINK2 .pgen/.pvar/.psam files"
    b_gen: "BGEN file"
    sample: "sample file corresponding to BGEN file"
    ref_first: "use the first allele as the reference for\\nBGEN or PLINK bed/bim/fam input format [default\\nassumes reference is last]"
    keep: "file listing samples to retain in the\\nanalysis (no header; starts with FID IID)"
    remove: "file listing samples to remove from the\\nanalysis (no header; starts with FID IID)"
    extract: "file with IDs of variants to retain in the"
    pheno_col: "phenotype name in header (use for each\\nphenotype to keep)"
    pheno_col_list: ",..,STRING\\ncomma separated list of phenotype names to\\nkeep"
    co_var_file: "covariate file (header required starting with\\nFID IID)"
    co_var_col: "covariate name in header (use for each\\ncovariate to keep)"
    co_var_col_list: ",..,STRING\\ncomma separated list of covariate names to\\nkeep"
    bt: "analyze phenotypes as binary"
    cc_one_two: "use control=1,case=2,missing=NA encoding for\\nbinary traits"
    b_size: "size of genotype blocks"
    cv: "(=5)              number of cross validation (CV) folds"
    loo_cv: "use leave-one out cross validation (LOOCV)"
    l_zero: "(=5)              number of ridge parameters to use when\\nfitting models within blocks [evenly spaced in\\n(0,1)]"
    lone: "(=5)              number of ridge parameters to use when\\nfitting model across blocks [evenly spaced in (0,1)]"
    lowmem: "reduce memory usage by writing level 0\\npredictions to temporary files"
    lowmem_prefix: "prefix where to write the temporary files in\\nstep 1 (default is to use prefix from --out)"
    strict: "remove all samples with missingness at any of\\nthe traits"
    print_prs: "also output polygenic predictions without\\nusing LOCO (=whole genome PRS)"
    out: "prefix for output files"
    threads: "number of threads"
    pred: "file containing the list of predictions files\\nfrom step 1"
    ignore_pred: "skip reading predictions from step 1\\n(equivalent to linear/logistic regression with only\\ncovariates)"
    use_prs: "when using whole genome PRS step 1 output in\\n'--pred'"
    force_impute: "keep and impute missing observations when in\\nstep 2 (default is to drop missing for each\\ntrait)"
    write_samples: "write IDs of samples included for each trait\\n(only in step 2)"
    min_mac: "(=5)          minimum minor allele count (MAC) for tested"
    split: "split asssociation results into separate\\nfiles for each trait"
    firth: "use Firth correction for p-values less than"
    spa: "use Saddlepoint approximation (SPA) for\\np-values less than threshold"
    p_thresh: "(=0.05)    P-value threshold below which to apply\\nFirth/SPA correction"
    chr: "specify chromosome to test in step 2 (use for\\neach chromosome)"
    chr_list: ",..,STRING\\nComma separated list of chromosomes to test\\nin step 2"
    range: ":MINPOS-MAXPOS\\nto specify a physical position window for\\nvariants to test in step 2"
    test: "'dominant' or 'recessive' (default is\\nadditive test)"
    gz: "compress output files (gzip format)"
    p: ""
    exclude: ""
    variants: "--minINFO DOUBLE(=0)      minimum imputation info score (Impute/Mach"
    threshold: "--approx                  use approximation to Firth correction for"
  }
  output {
    File out_stdout = stdout()
  }
}