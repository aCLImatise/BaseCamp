version 1.0

task Eukcc {
  input {
    File? db
    String? outdir
    File? config
    Int? n_cores
    Int? nco_resp_placer
    String? hmm
    Boolean? training
    Boolean? proteins
    File? bed
    Boolean? force
    Boolean? keep_temp
    Boolean? f_place
    Boolean? no_glob
    Boolean? quiet
    Boolean? debug
    Boolean? hpa
    Int? n_placements
    Int? min_genomes
    Boolean? ful_lineage
    Float? min_placement_likelyhood
    Int? mind_ist
    Boolean? touch
    Boolean? gmes
    Boolean? pyg_mes
    String? diamond
    Boolean? plot
  }
  command <<<
    eukcc \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(n_cores) then ("--ncores " +  '"' + n_cores + '"') else ""} \
      ~{if defined(nco_resp_placer) then ("--ncorespplacer " +  '"' + nco_resp_placer + '"') else ""} \
      ~{if defined(hmm) then ("--hmm " +  '"' + hmm + '"') else ""} \
      ~{if (training) then "--training" else ""} \
      ~{if (proteins) then "--proteins" else ""} \
      ~{if defined(bed) then ("--bed " +  '"' + bed + '"') else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if (keep_temp) then "--keeptemp" else ""} \
      ~{if (f_place) then "--fplace" else ""} \
      ~{if (no_glob) then "--noglob" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (hpa) then "--HPA" else ""} \
      ~{if defined(n_placements) then ("--nPlacements " +  '"' + n_placements + '"') else ""} \
      ~{if defined(min_genomes) then ("--minGenomes " +  '"' + min_genomes + '"') else ""} \
      ~{if (ful_lineage) then "--fullineage" else ""} \
      ~{if defined(min_placement_likelyhood) then ("--minPlacementLikelyhood " +  '"' + min_placement_likelyhood + '"') else ""} \
      ~{if defined(mind_ist) then ("--mindist " +  '"' + mind_ist + '"') else ""} \
      ~{if (touch) then "--touch" else ""} \
      ~{if (gmes) then "--gmes" else ""} \
      ~{if (pyg_mes) then "--pygmes" else ""} \
      ~{if defined(diamond) then ("--diamond " +  '"' + diamond + '"') else ""} \
      ~{if (plot) then "--plot" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    db: "Path to EukCC DB"
    outdir: "Location for the output. Names will be prefixed using\\nthe bin filenames"
    config: "Config file to define parameters, YAML"
    n_cores: "set number of cores for GeneMark-ES, pplacer and Hmmer"
    nco_resp_placer: "Pplacer requires a lot of memory. If you want you can\\nset less cores for pplacer, which improves memory\\nconsumption significantly"
    hmm: "run hmmer on all these HMMs instead"
    training: "Run EukCC in training mode (needed to create a new\\nrelease of the DB)"
    proteins: "Input fasta is proteins"
    bed: "You can pass a bedfile of the protein location to omit\\nfragmented proteins being detected twice"
    force: "Force rerun of computation even if output is newer\\nthan input. Don't resume previous run."
    keep_temp: "Keep all temporary files, by default EukCC will remove\\nsome temp files"
    f_place: "Force rerun of placement and subsequent steps"
    no_glob: "Do not expand paths using glob"
    quiet: "Silcence most output"
    debug: "Debug and thus ignore safety"
    hpa: "Set placement method to HPA"
    n_placements: "Set number of proteins to support location in tree\\n(default: 2)"
    min_genomes: "Minimal number of genomes to support a set (default:\\n3)"
    ful_lineage: "Output full lineage for MAGs"
    min_placement_likelyhood: "minimal pplacer likelyhood (default: 0.4)"
    mind_ist: "Distance to collapse hits (default: 2000)"
    touch: "Do not run, but touch all output files"
    gmes: "only run GeneMark-ES"
    pyg_mes: "Use pygmes, will improve eukccs capability of running\\non highly fragmented bins but will take longer"
    diamond: "required to use pygmes option"
    plot: "produce plots"
  }
  output {
    File out_stdout = stdout()
  }
}