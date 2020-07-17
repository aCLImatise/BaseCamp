version 1.0

task BuildTrees.py {
  input {
    Array[String] list_tab_delimited
    String? outdir
    String? out_name
    String? log
    Boolean? failed
    String? format
    Boolean? collapse
    Boolean? nc_dr_three
    Boolean? n_mask
    Array[String] md
    Array[String] clones
    Int? min_seq
    String? sample
    Array[String] append
    Boolean? ig_phy_ml
    String? nproc
    String? clean
    String? optimize
    String? omega
    String? kappa_parameters_estimate
    String? motifs
    String? hotness
    String? o_format
    Boolean? no_hlp
    String? asr
    String lineages
    String lineages_fail
    String ig_phy_ml_pass
  }
  command <<<
    BuildTrees.py \
      ~{lineages} \
      ~{lineages_fail} \
      ~{ig_phy_ml_pass} \
      ~{if defined(list_tab_delimited) then ("-d " +  '"' + list_tab_delimited + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(out_name) then ("--outname " +  '"' + out_name + '"') else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{true="--failed" false="" failed} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{true="--collapse" false="" collapse} \
      ~{true="--ncdr3" false="" nc_dr_three} \
      ~{true="--nmask" false="" n_mask} \
      ~{if defined(md) then ("--md " +  '"' + md + '"') else ""} \
      ~{if defined(clones) then ("--clones " +  '"' + clones + '"') else ""} \
      ~{if defined(min_seq) then ("--minseq " +  '"' + min_seq + '"') else ""} \
      ~{if defined(sample) then ("--sample " +  '"' + sample + '"') else ""} \
      ~{if defined(append) then ("--append " +  '"' + append + '"') else ""} \
      ~{true="--igphyml" false="" ig_phy_ml} \
      ~{if defined(nproc) then ("--nproc " +  '"' + nproc + '"') else ""} \
      ~{if defined(clean) then ("--clean " +  '"' + clean + '"') else ""} \
      ~{if defined(optimize) then ("--optimize " +  '"' + optimize + '"') else ""} \
      ~{if defined(omega) then ("--omega " +  '"' + omega + '"') else ""} \
      ~{if defined(kappa_parameters_estimate) then ("-t " +  '"' + kappa_parameters_estimate + '"') else ""} \
      ~{if defined(motifs) then ("--motifs " +  '"' + motifs + '"') else ""} \
      ~{if defined(hotness) then ("--hotness " +  '"' + hotness + '"') else ""} \
      ~{if defined(o_format) then ("--oformat " +  '"' + o_format + '"') else ""} \
      ~{true="--nohlp" false="" no_hlp} \
      ~{if defined(asr) then ("--asr " +  '"' + asr + '"') else ""}
  >>>
  parameter_meta {
    list_tab_delimited: "A list of tab delimited database files. (default: None)"
    outdir: "Specify to changes the output directory to the location specified. The input file directory is used if this is not specified. (default: None)"
    out_name: "Changes the prefix of the successfully processed output file to the string specified. May not be specified with multiple input files. (default: None)"
    log: "Specify to write verbose logging to a file. May not be specified with multiple input files. (default: None)"
    failed: "If specified create files containing records that fail processing. (default: False)"
    format: "Specify input and output format. (default: airr)"
    collapse: "If specified, collapse identical sequences before exporting to fasta. (default: False)"
    nc_dr_three: "If specified, remove CDR3 from all sequences. (default: False)"
    n_mask: "If specified, do not attempt to mask split codons. (default: False)"
    md: "List of fields to containing metadata to include in output fasta file sequence headers. (default: None)"
    clones: "List of clone IDs to output, if specified. (default: None)"
    min_seq: "Minimum number of data sequences. Any clones with fewer than the specified number of sequences will be excluded. (default: 1)"
    sample: "Depth of reads to be subsampled (before deduplication). (default: -1)"
    append: "List of columns to append to sequence ID to ensure uniqueness. (default: None)"
    ig_phy_ml: "Run IgPhyML on output? (default: False)"
    nproc: "Number of threads to parallelize IgPhyML across. (default: 1)"
    clean: "Delete intermediate files? none: leave all intermediate files; all: delete all intermediate files. (default: none)"
    optimize: "Optimize combination of topology (t) branch lengths (l) and parameters (r), or nothing (n), for IgPhyML. (default: lr)"
    omega: "Omega parameters to estimate for FWR,CDR respectively: e = estimate, ce = estimate + confidence interval (default: e,e)"
    kappa_parameters_estimate: "Kappa parameters to estimate: e = estimate, ce = estimate + confidence interval (default: e)"
    motifs: "Which motifs to estimate mutability. (default: WRC_2:0,GYW_0:1,WA_1:2,TW_0:3,SYC_2:4,GRS_0:5)"
    hotness: "Mutability parameters to estimate: e = estimate, ce = estimate + confidence interval (default: e,e,e,e,e,e)"
    o_format: "IgPhyML output format. (default: tab)"
    no_hlp: "Don't run HLP model? (default: False)"
    asr: "Ancestral sequence reconstruction interval (0-1). (default: -1)"
    lineages: "successfully processed records."
    lineages_fail: "database records failed processing."
    ig_phy_ml_pass: "parameter estimates and lineage trees from running IgPhyML, if specified"
  }
}