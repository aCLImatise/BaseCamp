version 1.0

task EDTApl {
  input {
    Boolean? genome
    Boolean? species
    Boolean? step
    Boolean? overwrite
    Boolean? cds
    Boolean? curated_lib
    Boolean? sensitive
    Boolean? an_no
    File? rm_out
    Boolean? evaluate
    Boolean? exclude
    Boolean? force
    Boolean? repeat_modeler
    Boolean? repeatmasker
    String? check_dependencies
    Boolean? threads
    Boolean? debug
  }
  command <<<
    EDTA_pl \
      ~{if (genome) then "--genome" else ""} \
      ~{if (species) then "--species" else ""} \
      ~{if (step) then "--step" else ""} \
      ~{if (overwrite) then "--overwrite" else ""} \
      ~{if (cds) then "--cds" else ""} \
      ~{if (curated_lib) then "--curatedlib" else ""} \
      ~{if (sensitive) then "--sensitive" else ""} \
      ~{if (an_no) then "--anno" else ""} \
      ~{if (rm_out) then "--rmout" else ""} \
      ~{if (evaluate) then "--evaluate" else ""} \
      ~{if (exclude) then "--exclude" else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if (repeat_modeler) then "--repeatmodeler" else ""} \
      ~{if (repeatmasker) then "--repeatmasker" else ""} \
      ~{if defined(check_dependencies) then ("--check_dependencies " +  '"' + check_dependencies + '"') else ""} \
      ~{if (threads) then "--threads" else ""} \
      ~{if (debug) then "--debug" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/edta:1.9.6--1"
  }
  parameter_meta {
    genome: "[File]  The genome FASTA"
    species: "[Rice|Maize|others]   Specify the species for identification of TIR\\ncandidates. Default: others"
    step: "[all|filter|final|anno] Specify which steps you want to run EDTA.\\nall: run the entire pipeline (default)\\nfilter: start from raw TEs to the end.\\nfinal: start from filtered TEs to finalizing the run.\\nanno: perform whole-genome annotation/analysis after\\nTE library construction."
    overwrite: "[0|1]   If previous raw TE results are found, decide to overwrite\\n(1, rerun) or not (0, default)."
    cds: "[File]  Provide a FASTA file containing the coding sequence (no introns,\\nUTRs, nor TEs) of this genome or its close relative."
    curated_lib: "[File]  Provided a curated library to keep consistant naming and\\nclassification for known TEs. TEs in this file will be\\ntrusted 100%, so please ONLY provide MANUALLY CURATED ones.\\nThis option is not mandatory. It's totally OK if no file is\\nprovided (default)."
    sensitive: "[0|1]   Use RepeatModeler to identify remaining TEs (1) or not (0,\\ndefault). This step is slow but MAY help to recover some TEs."
    an_no: "[0|1]   Perform (1) or not perform (0, default) whole-genome TE annotation\\nafter TE library construction."
    rm_out: "[File]  Provide your own homology-based TE annotation instead of using the\\nEDTA library for masking. File is in RepeatMasker .out format. This\\nfile will be merged with the structural-based TE annotation. (--anno 1\\nrequired). Default: use the EDTA library for annotation."
    evaluate: "[0|1]        Evaluate (1) classification consistency of the TE annotation.\\n(--anno 1 required). Default: 0. This step is slow and does\\nnot change the annotation result."
    exclude: "[File]  Exclude bed format regions from TE annotation. Default: undef.\\n(--anno 1 required)."
    force: "[0|1]   When no confident TE candidates are found: 0, interrupt and exit\\n(default); 1, use rice TEs to continue."
    repeat_modeler: "[path]  The directory containing RepeatModeler (default: read from ENV)"
    repeatmasker: "[path]   The directory containing RepeatMasker (default: read from ENV)"
    check_dependencies: "if dependencies are fullfiled and quit"
    threads: "[int]   Number of theads to run this script (default: 4)"
    debug: "[0|1]   Retain intermediate files (default: 0)"
  }
  output {
    File out_stdout = stdout()
    File out_rm_out = "${in_rm_out}"
  }
}