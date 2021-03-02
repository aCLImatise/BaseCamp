version 1.0

task NGSadmix {
  input {
    File? likes
    Int? of_ancestral_populations
    String? fname
    String? qname
    String? out_files
    String? print_info
    String? seed
    Int? of_threads
    Int? method
    String? mist_ol
    Int? to_l_like_five_zero
    String? to_l
    Int? dym_bound
    Int? maxiter
    String? min_maf
    Int? min_lrt
    Int? mini_nd
  }
  command <<<
    NGSadmix \
      ~{if defined(likes) then ("-likes " +  '"' + likes + '"') else ""} \
      ~{if defined(of_ancestral_populations) then ("-K " +  '"' + of_ancestral_populations + '"') else ""} \
      ~{if defined(fname) then ("-fname " +  '"' + fname + '"') else ""} \
      ~{if defined(qname) then ("-qname " +  '"' + qname + '"') else ""} \
      ~{if defined(out_files) then ("-outfiles " +  '"' + out_files + '"') else ""} \
      ~{if defined(print_info) then ("-printInfo " +  '"' + print_info + '"') else ""} \
      ~{if defined(seed) then ("-seed " +  '"' + seed + '"') else ""} \
      ~{if defined(of_threads) then ("-P " +  '"' + of_threads + '"') else ""} \
      ~{if defined(method) then ("-method " +  '"' + method + '"') else ""} \
      ~{if defined(mist_ol) then ("-misTol " +  '"' + mist_ol + '"') else ""} \
      ~{if defined(to_l_like_five_zero) then ("-tolLike50 " +  '"' + to_l_like_five_zero + '"') else ""} \
      ~{if defined(to_l) then ("-tol " +  '"' + to_l + '"') else ""} \
      ~{if defined(dym_bound) then ("-dymBound " +  '"' + dym_bound + '"') else ""} \
      ~{if defined(maxiter) then ("-maxiter " +  '"' + maxiter + '"') else ""} \
      ~{if defined(min_maf) then ("-minMaf " +  '"' + min_maf + '"') else ""} \
      ~{if defined(min_lrt) then ("-minLrt " +  '"' + min_lrt + '"') else ""} \
      ~{if defined(mini_nd) then ("-minInd " +  '"' + mini_nd + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    likes: "likelihood filename"
    of_ancestral_populations: "of ancestral populations"
    fname: "population frequencies"
    qname: "proportions"
    out_files: "for output files"
    print_info: "ID and mean maf for the SNPs that were analysed"
    seed: "for initial guess in EM"
    of_threads: "of threads"
    method: "0 no acceleration of EM algorithm"
    mist_ol: "for considering site as missing"
    to_l_like_five_zero: "difference in 50 iterations"
    to_l: "for convergence"
    dym_bound: "dymamic boundaries (1: yes (default) 0: no)"
    maxiter: "number of EM iterations"
    min_maf: "minor allele frequency"
    min_lrt: "likelihood ratio value for maf>0"
    mini_nd: "number of informative individuals"
  }
  output {
    File out_stdout = stdout()
  }
}