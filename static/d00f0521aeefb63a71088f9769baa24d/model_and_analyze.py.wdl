version 1.0

task ModelAndAnalyzepy {
  input {
    File? cfg
    Boolean? analyze_only
    Boolean? optimize_only
    Boolean? model_only
    Boolean? tad_only
    Int? n_cpus
    File? root_path
    Array[File] data
    Array[File] biases
    Array[String] x_name
    Array[File] norm
    Float? perc_zeros
    Int? min_count
    String? crm
    Int? beg
    Int? chrom_start
    Int? end
    Int? res
    File? fig_format
    Directory? outdir
    Boolean? tad
    Boolean? centromere
    Array[Int] group
    Int? max_dist
    Int? up_freq
    Int? low_freq
    Int? scale
    Int? d_cut_off
    Int? n_models_opt
    Int? n_keep_opt
    Boolean? force_opt
    Int? n_models_mod
    Int? n_keep_mod
    Int? seed
    String? species
    String? cell
    String? exp_type
    Int? assembly
    String? enzyme
    String? identifier
    String? project
    Array[Int] analyze
    Boolean? not_write_cmm
    Boolean? not_write_xyz
    Boolean? not_write_json
  }
  command <<<
    model_and_analyze_py \
      ~{if defined(cfg) then ("--cfg " +  '"' + cfg + '"') else ""} \
      ~{if (analyze_only) then "--analyze_only" else ""} \
      ~{if (optimize_only) then "--optimize_only" else ""} \
      ~{if (model_only) then "--model_only" else ""} \
      ~{if (tad_only) then "--tad_only" else ""} \
      ~{if defined(n_cpus) then ("--ncpus " +  '"' + n_cpus + '"') else ""} \
      ~{if defined(root_path) then ("--root_path " +  '"' + root_path + '"') else ""} \
      ~{if defined(data) then ("--data " +  '"' + data + '"') else ""} \
      ~{if defined(biases) then ("--biases " +  '"' + biases + '"') else ""} \
      ~{if defined(x_name) then ("--xname " +  '"' + x_name + '"') else ""} \
      ~{if defined(norm) then ("--norm " +  '"' + norm + '"') else ""} \
      ~{if defined(perc_zeros) then ("--perc_zeros " +  '"' + perc_zeros + '"') else ""} \
      ~{if defined(min_count) then ("--min_count " +  '"' + min_count + '"') else ""} \
      ~{if defined(crm) then ("--crm " +  '"' + crm + '"') else ""} \
      ~{if defined(beg) then ("--beg " +  '"' + beg + '"') else ""} \
      ~{if defined(chrom_start) then ("--chrom_start " +  '"' + chrom_start + '"') else ""} \
      ~{if defined(end) then ("--end " +  '"' + end + '"') else ""} \
      ~{if defined(res) then ("--res " +  '"' + res + '"') else ""} \
      ~{if defined(fig_format) then ("--fig_format " +  '"' + fig_format + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if (tad) then "--tad" else ""} \
      ~{if (centromere) then "--centromere" else ""} \
      ~{if defined(group) then ("--group " +  '"' + group + '"') else ""} \
      ~{if defined(max_dist) then ("--maxdist " +  '"' + max_dist + '"') else ""} \
      ~{if defined(up_freq) then ("--upfreq " +  '"' + up_freq + '"') else ""} \
      ~{if defined(low_freq) then ("--lowfreq " +  '"' + low_freq + '"') else ""} \
      ~{if defined(scale) then ("--scale " +  '"' + scale + '"') else ""} \
      ~{if defined(d_cut_off) then ("--dcutoff " +  '"' + d_cut_off + '"') else ""} \
      ~{if defined(n_models_opt) then ("--nmodels_opt " +  '"' + n_models_opt + '"') else ""} \
      ~{if defined(n_keep_opt) then ("--nkeep_opt " +  '"' + n_keep_opt + '"') else ""} \
      ~{if (force_opt) then "--force_opt" else ""} \
      ~{if defined(n_models_mod) then ("--nmodels_mod " +  '"' + n_models_mod + '"') else ""} \
      ~{if defined(n_keep_mod) then ("--nkeep_mod " +  '"' + n_keep_mod + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(species) then ("--species " +  '"' + species + '"') else ""} \
      ~{if defined(cell) then ("--cell " +  '"' + cell + '"') else ""} \
      ~{if defined(exp_type) then ("--exp_type " +  '"' + exp_type + '"') else ""} \
      ~{if defined(assembly) then ("--assembly " +  '"' + assembly + '"') else ""} \
      ~{if defined(enzyme) then ("--enzyme " +  '"' + enzyme + '"') else ""} \
      ~{if defined(identifier) then ("--identifier " +  '"' + identifier + '"') else ""} \
      ~{if defined(project) then ("--project " +  '"' + project + '"') else ""} \
      ~{if defined(analyze) then ("--analyze " +  '"' + analyze + '"') else ""} \
      ~{if (not_write_cmm) then "--not_write_cmm" else ""} \
      ~{if (not_write_xyz) then "--not_write_xyz" else ""} \
      ~{if (not_write_json) then "--not_write_json" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    cfg: "path to a configuration file with predefined parameters"
    analyze_only: "load precomputed models in outdir, skip optimization, modeling"
    optimize_only: "do the optimization of the region and exit"
    model_only: "skip optimization, model with inputparameters only."
    tad_only: "[False] exit after searching for TADs"
    n_cpus: "[1] Number of CPUs to use"
    root_path: "path to search for data files (just pass file namein \\\"data\\\")"
    data: "path to file(s) with Hi-C data matrix. If many, experiments will be\\nsummed up. I.e.: --data replicate_1.txt replicate_2.txt"
    biases: "path to pickle file(s) with Hi-C data matrix biases. Use same order\\nas data. If data are bam files use these biases to skip\\nnormalization"
    x_name: "[file name] experiment name(s). Use same order as data."
    norm: "path to file(s) with normalizedHi-C data matrix."
    perc_zeros: "[95%] maximum percentage of zeroes allowed per column."
    min_count: "[None] minimum number of reads mapped to a bin (recommended value\\ncould be 2500). If set this option overrides the perc_zero\\nfiltering... This option is slightly slower."
    crm: "chromosome name"
    beg: "genomic coordinate from which to start modeling"
    chrom_start: "genomic coordinate corresponding to the bin 0 of the input matrices"
    end: "genomic coordinate where to end modeling"
    res: "resolution of the Hi-C experiment"
    fig_format: "file format and extension for figures and plots (can be any\\nsupported by matplotlib, png, eps...)"
    outdir: "out directory for results"
    tad: "[False] search for TADs in experiments"
    centromere: "[False] search for centromeric region"
    group: "[all together] How to group Hi-C experiments for the detection of\\nTAD borders. I.e.: \\\"--exp_group 2 2 1\\\" first 2 experiments used\\ntogether, next 2 also, and last alone (batch_mode option used)"
    max_dist: "range of numbers for maxdist, i.e. 400:1000:100 -- or just a number"
    up_freq: "range of numbers for upfreq, i.e. 0:1.2:0.3 -- or just a number"
    low_freq: "range of numbers for lowfreq, i.e. -1.2:0:0.3 -- or just a number"
    scale: "[0.01] range of numbers to be test as optimal scale value, i.e.\\n0.005:0.01:0.001 -- Can also pass only one number"
    d_cut_off: "[2] range of numbers to be test as optimal distance cutoff parameter\\n(distance, in number of beads, from which to consider 2 beads as\\nbeing close), i.e. 1:5:0.5 -- Can also pass only one number"
    n_models_opt: "[500] number of models to generate for optimization"
    n_keep_opt: "[100] number of models to keep for optimization"
    force_opt: "[False] do not take into account previous optimizations. Usefull for\\nrunning in parallel in a cluster for example."
    n_models_mod: "[5000] number of models to generate for modeling"
    n_keep_mod: "[1000] number of models to keep for modeling"
    seed: "[1] seed number from which to start modeling"
    species: "species name, with no spaces, i.e.: homo_sapiens"
    cell: "cell type name"
    exp_type: "experiment type name (i.e.: Hi-C)"
    assembly: "NCBI ID of the original assembly (i.e.: NCBI36 for human)"
    enzyme: "name of the enzyme used to digest chromatin (i.e. HindIII)"
    identifier: "NCBI identifier of the experiment"
    project: "project name"
    analyze: "[2 3 4 5 6 7 8 9 10 11 12 13 14 15 16] list of numbers representing\\nthe analysis to be done. Choose between: 0) do nothing 1) column\\nfiltering 2) TAD borders 3) TAD alignment 4) optimization plot 5)\\ncorrelation real/models 6) z-score plot 7) constraints 8) objective\\nfunction 9) centroid 10) consistency 11) density 12) contact map 13)\\nwalking angle 14) persistence length 15) accessibility 16)\\ninteraction"
    not_write_cmm: "[False] do not generate cmm files for each model (Chimera input)"
    not_write_xyz: "[False] do not generate xyz files for each model (3D coordinates)"
    not_write_json: "[False] do not generate json file."
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
  }
}