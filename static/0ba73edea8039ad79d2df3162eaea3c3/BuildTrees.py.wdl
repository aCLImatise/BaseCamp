version 1.0

task BuildTreespy {
  input {
    Array[String] list_tab_defaultnone
    File? outdir
    File? out_name
    File? log
    Boolean? failed
    String? format
    Boolean? collapse
    Boolean? nc_dr_three
    Boolean? n_mask
    File? md
    Array[String] clones
    Int? min_seq
    Int? sample
    Array[String] append
    Boolean? ig_phy_ml
    Int? nproc
    String? clean
    String? optimize
    String? omega
    String? kappa_parameters_estimate
    Int? motifs
    String? hotness
    String? o_format
    Boolean? no_hlp
    Int? asr
    String lineages
    String lineages_fail
    String ig_phy_ml_pass
  }
  command <<<
    BuildTrees_py \
      ~{lineages} \
      ~{lineages_fail} \
      ~{ig_phy_ml_pass} \
      ~{if defined(list_tab_defaultnone) then ("-d " +  '"' + list_tab_defaultnone + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(out_name) then ("--outname " +  '"' + out_name + '"') else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{if (failed) then "--failed" else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if (collapse) then "--collapse" else ""} \
      ~{if (nc_dr_three) then "--ncdr3" else ""} \
      ~{if (n_mask) then "--nmask" else ""} \
      ~{if defined(md) then ("--md " +  '"' + md + '"') else ""} \
      ~{if defined(clones) then ("--clones " +  '"' + clones + '"') else ""} \
      ~{if defined(min_seq) then ("--minseq " +  '"' + min_seq + '"') else ""} \
      ~{if defined(sample) then ("--sample " +  '"' + sample + '"') else ""} \
      ~{if defined(append) then ("--append " +  '"' + append + '"') else ""} \
      ~{if (ig_phy_ml) then "--igphyml" else ""} \
      ~{if defined(nproc) then ("--nproc " +  '"' + nproc + '"') else ""} \
      ~{if defined(clean) then ("--clean " +  '"' + clean + '"') else ""} \
      ~{if defined(optimize) then ("--optimize " +  '"' + optimize + '"') else ""} \
      ~{if defined(omega) then ("--omega " +  '"' + omega + '"') else ""} \
      ~{if defined(kappa_parameters_estimate) then ("-t " +  '"' + kappa_parameters_estimate + '"') else ""} \
      ~{if defined(motifs) then ("--motifs " +  '"' + motifs + '"') else ""} \
      ~{if defined(hotness) then ("--hotness " +  '"' + hotness + '"') else ""} \
      ~{if defined(o_format) then ("--oformat " +  '"' + o_format + '"') else ""} \
      ~{if (no_hlp) then "--nohlp" else ""} \
      ~{if defined(asr) then ("--asr " +  '"' + asr + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    list_tab_defaultnone: "A list of tab delimited database files. (default:\\nNone)"
    outdir: "Specify to changes the output directory to the\\nlocation specified. The input file directory is used\\nif this is not specified. (default: None)"
    out_name: "Changes the prefix of the successfully processed\\noutput file to the string specified. May not be\\nspecified with multiple input files. (default: None)"
    log: "Specify to write verbose logging to a file. May not be\\nspecified with multiple input files. (default: None)"
    failed: "If specified create files containing records that fail\\nprocessing. (default: False)"
    format: "Specify input and output format. (default: airr)"
    collapse: "If specified, collapse identical sequences before\\nexporting to fasta. (default: False)"
    nc_dr_three: "If specified, remove CDR3 from all sequences.\\n(default: False)"
    n_mask: "If specified, do not attempt to mask split codons.\\n(default: False)"
    md: "List of fields to containing metadata to include in\\noutput fasta file sequence headers. (default: None)"
    clones: "List of clone IDs to output, if specified. (default:\\nNone)"
    min_seq: "Minimum number of data sequences. Any clones with\\nfewer than the specified number of sequences will be\\nexcluded. (default: 1)"
    sample: "Depth of reads to be subsampled (before\\ndeduplication). (default: -1)"
    append: "List of columns to append to sequence ID to ensure\\nuniqueness. (default: None)"
    ig_phy_ml: "Run IgPhyML on output? (default: False)"
    nproc: "Number of threads to parallelize IgPhyML across.\\n(default: 1)"
    clean: "Delete intermediate files? none: leave all\\nintermediate files; all: delete all intermediate\\nfiles. (default: none)"
    optimize: "Optimize combination of topology (t) branch lengths\\n(l) and parameters (r), or nothing (n), for IgPhyML.\\n(default: lr)"
    omega: "Omega parameters to estimate for FWR,CDR respectively:\\ne = estimate, ce = estimate + confidence interval\\n(default: e,e)"
    kappa_parameters_estimate: "Kappa parameters to estimate: e = estimate, ce =\\nestimate + confidence interval (default: e)"
    motifs: "Which motifs to estimate mutability. (default:\\nWRC_2:0,GYW_0:1,WA_1:2,TW_0:3,SYC_2:4,GRS_0:5)"
    hotness: "Mutability parameters to estimate: e = estimate, ce =\\nestimate + confidence interval (default: e,e,e,e,e,e)"
    o_format: "IgPhyML output format. (default: tab)"
    no_hlp: "Don't run HLP model? (default: False)"
    asr: "Ancestral sequence reconstruction interval (0-1).\\n(default: -1)"
    lineages: "successfully processed records."
    lineages_fail: "database records failed processing."
    ig_phy_ml_pass: "parameter estimates and lineage trees from running IgPhyML, if specified"
  }
  output {
    File out_stdout = stdout()
    File out_md = "${in_md}"
  }
}