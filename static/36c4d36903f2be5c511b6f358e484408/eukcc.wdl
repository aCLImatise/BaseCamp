version 1.0

task Eukcc {
  input {
    String? db
    String? outdir
    String? config
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
    String? n_placements
    String? min_genomes
    Boolean? ful_lineage
    Float? min_placement_likelyhood
    String? mind_ist
    Boolean? touch
    Boolean? gmes
    Boolean? pyg_mes
    String? diamond
    Boolean? plot
    String fast_a
  }
  command <<<
    eukcc \
      ~{fast_a} \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(n_cores) then ("--ncores " +  '"' + n_cores + '"') else ""} \
      ~{if defined(nco_resp_placer) then ("--ncorespplacer " +  '"' + nco_resp_placer + '"') else ""} \
      ~{if defined(hmm) then ("--hmm " +  '"' + hmm + '"') else ""} \
      ~{true="--training" false="" training} \
      ~{true="--proteins" false="" proteins} \
      ~{if defined(bed) then ("--bed " +  '"' + bed + '"') else ""} \
      ~{true="--force" false="" force} \
      ~{true="--keeptemp" false="" keep_temp} \
      ~{true="--fplace" false="" f_place} \
      ~{true="--noglob" false="" no_glob} \
      ~{true="--quiet" false="" quiet} \
      ~{true="--debug" false="" debug} \
      ~{true="--HPA" false="" hpa} \
      ~{if defined(n_placements) then ("--nPlacements " +  '"' + n_placements + '"') else ""} \
      ~{if defined(min_genomes) then ("--minGenomes " +  '"' + min_genomes + '"') else ""} \
      ~{true="--fullineage" false="" ful_lineage} \
      ~{if defined(min_placement_likelyhood) then ("--minPlacementLikelyhood " +  '"' + min_placement_likelyhood + '"') else ""} \
      ~{if defined(mind_ist) then ("--mindist " +  '"' + mind_ist + '"') else ""} \
      ~{true="--touch" false="" touch} \
      ~{true="--gmes" false="" gmes} \
      ~{true="--pygmes" false="" pyg_mes} \
      ~{if defined(diamond) then ("--diamond " +  '"' + diamond + '"') else ""} \
      ~{true="--plot" false="" plot}
  >>>
  parameter_meta {
    db: "Path to EukCC DB"
    outdir: "Location for the output. Names will be prefixed using the bin filenames"
    config: "Config file to define parameters, YAML"
    n_cores: "set number of cores for GeneMark-ES, pplacer and Hmmer"
    nco_resp_placer: "Pplacer requires a lot of memory. If you want you can set less cores for pplacer, which improves memory consumption significantly"
    hmm: "run hmmer on all these HMMs instead"
    training: "Run EukCC in training mode (needed to create a new release of the DB)"
    proteins: "Input fasta is proteins"
    bed: "You can pass a bedfile of the protein location to omit fragmented proteins being detected twice"
    force: "Force rerun of computation even if output is newer than input. Don't resume previous run."
    keep_temp: "Keep all temporary files, by default EukCC will remove some temp files"
    f_place: "Force rerun of placement and subsequent steps"
    no_glob: "Do not expand paths using glob"
    quiet: "Silcence most output"
    debug: "Debug and thus ignore safety"
    hpa: "Set placement method to HPA"
    n_placements: "Set number of proteins to support location in tree (default: 2)"
    min_genomes: "Minimal number of genomes to support a set (default: 3)"
    ful_lineage: "Output full lineage for MAGs"
    min_placement_likelyhood: "minimal pplacer likelyhood (default: 0.4)"
    mind_ist: "Distance to collapse hits (default: 2000)"
    touch: "Do not run, but touch all output files"
    gmes: "only run GeneMark-ES"
    pyg_mes: "Use pygmes, will improve eukccs capability of running on highly fragmented bins but will take longer"
    diamond: "required to use pygmes option"
    plot: "produce plots"
    fast_a: "Run script on this bin (fasta file)"
  }
}