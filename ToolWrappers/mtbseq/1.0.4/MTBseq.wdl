version 1.0

task MTBseq {
  input {
    Boolean? check
    Boolean? step
    Boolean? continue
    Boolean? samples
    Boolean? project
    Boolean? resi_list
    Boolean? int_regions
    Boolean? categories
    Boolean? base_calib
    Int? ref
    Int? min_b_qual
    Boolean? all_vars
    Boolean? snp_vars
    Boolean? low_freq_vars
    Int? minco_vf
    Int? minco_vr
    Int? min_phred_two_zero
    Int? min_freq
    Int? unam_big
    Int? window
    Int? distance
    Boolean? quiet
    Int? threads
  }
  command <<<
    MTBseq \
      ~{if (check) then "--check" else ""} \
      ~{if (step) then "--step" else ""} \
      ~{if (continue) then "--continue" else ""} \
      ~{if (samples) then "--samples" else ""} \
      ~{if (project) then "--project" else ""} \
      ~{if (resi_list) then "--resilist" else ""} \
      ~{if (int_regions) then "--intregions" else ""} \
      ~{if (categories) then "--categories" else ""} \
      ~{if (base_calib) then "--basecalib" else ""} \
      ~{if defined(ref) then ("--ref " +  '"' + ref + '"') else ""} \
      ~{if defined(min_b_qual) then ("--minbqual " +  '"' + min_b_qual + '"') else ""} \
      ~{if (all_vars) then "--all_vars" else ""} \
      ~{if (snp_vars) then "--snp_vars" else ""} \
      ~{if (low_freq_vars) then "--lowfreq_vars" else ""} \
      ~{if defined(minco_vf) then ("--mincovf " +  '"' + minco_vf + '"') else ""} \
      ~{if defined(minco_vr) then ("--mincovr " +  '"' + minco_vr + '"') else ""} \
      ~{if defined(min_phred_two_zero) then ("--minphred20 " +  '"' + min_phred_two_zero + '"') else ""} \
      ~{if defined(min_freq) then ("--minfreq " +  '"' + min_freq + '"') else ""} \
      ~{if defined(unam_big) then ("--unambig " +  '"' + unam_big + '"') else ""} \
      ~{if defined(window) then ("--window " +  '"' + window + '"') else ""} \
      ~{if defined(distance) then ("--distance " +  '"' + distance + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  parameter_meta {
    check: "Check the dependencies of MTBseq"
    step: "<ESSENTIAL> This is an essential option! Choose your pipeline step as a parameter!\\nTBfull      Full workflow\\nTBbwa       Read mapping\\nTBrefine    Refinement of mapping(s)\\nTBpile      Creation of mpileup file(s)\\nTBlist      Creation of position list(s)\\nTBvariants  Calling variants\\nTBstats     Statisitcs of mapping(s) and variant calling(s)\\nTBstrains   Calling lineage from sample(s)\\nTBjoin      Joint variant analysis from defined samples\\nTBamend     Amending joint variant table(s)\\nTBgroups    Detecting groups of samples"
    continue: ""
    samples: ""
    project: ""
    resi_list: ""
    int_regions: ""
    categories: ""
    base_calib: ""
    ref: ""
    min_b_qual: ""
    all_vars: ""
    snp_vars: ""
    low_freq_vars: ""
    minco_vf: ""
    minco_vr: ""
    min_phred_two_zero: ""
    min_freq: ""
    unam_big: ""
    window: ""
    distance: ""
    quiet: ""
    threads: ""
  }
  output {
    File out_stdout = stdout()
  }
}