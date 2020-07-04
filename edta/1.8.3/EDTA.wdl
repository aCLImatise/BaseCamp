version 1.0

task EDTA.pl {
  input {
    Boolean? genome
    Boolean? species
    Boolean? step
    Boolean? overwrite
    Boolean? cds
    Boolean? curated_lib
    Boolean? sensitive
    Boolean? an_no
    Boolean? rm_out
    Boolean? evaluate
    Boolean? exclude
    Boolean? force
    Boolean? repeat_modeler
    Boolean? repeatmasker
    Boolean? blast
    String? check_dependencies
    Boolean? trf
    Boolean? threads
  }
  command <<<
    EDTA.pl \
      ~{true="--genome" false="" genome} \
      ~{true="--species" false="" species} \
      ~{true="--step" false="" step} \
      ~{true="--overwrite" false="" overwrite} \
      ~{true="--cds" false="" cds} \
      ~{true="--curatedlib" false="" curated_lib} \
      ~{true="--sensitive" false="" sensitive} \
      ~{true="--anno" false="" an_no} \
      ~{true="--rmout" false="" rm_out} \
      ~{true="--evaluate" false="" evaluate} \
      ~{true="--exclude" false="" exclude} \
      ~{true="--force" false="" force} \
      ~{true="--repeatmodeler" false="" repeat_modeler} \
      ~{true="--repeatmasker" false="" repeatmasker} \
      ~{true="--blast" false="" blast} \
      ~{if defined(check_dependencies) then ("--check_dependencies " +  '"' + check_dependencies + '"') else ""} \
      ~{true="--trf" false="" trf} \
      ~{true="--threads" false="" threads}
  >>>
  parameter_meta {
    genome: "[File]  The genome FASTA"
    species: "[Rice|Maize|others]   Specify the species for identification of TIR candidates. Default: others"
    step: "[all|filter|final|anno] Specify which steps you want to run EDTA. all: run the entire pipeline (default) filter: start from raw TEs to the end. final: start from filtered TEs to finalizing the run. anno: perform whole-genome annotation/analysis after TE library construction."
    overwrite: "[0|1]   If previous raw TE results are found, decide to overwrite (1, rerun) or not (0, default)."
    cds: "[File]  Provide a FASTA file containing the coding sequence (no introns, UTRs, nor TEs) of this genome or its close relative."
    curated_lib: "[File]  Provided a curated library to keep consistant naming and classification for known TEs. TEs in this file will be trusted 100%, so please ONLY provide MANUALLY CURATED ones. This option is not mandatory. It's totally OK if no file is provided (default)."
    sensitive: "[0|1]   Use RepeatModeler to identify remaining TEs (1) or not (0, default). This step is very slow and MAY help to recover some TEs."
    an_no: "[0|1]   Perform (1) or not perform (0, default) whole-genome TE annotation after TE library construction."
    rm_out: "[File]  Provide your own homology-based TE annotation instead of using the EDTA library for masking. File is in RepeatMasker .out format. This file will be merged with the structural-based TE annotation. (--anno 1 required). Default: use the EDTA library for annotation."
    evaluate: "[0|1]        Evaluate (1) classification consistency of the TE annotation. (--anno 1 required). Default: 0. This step is slow and does not affect the annotation result."
    exclude: "[File]  Exclude bed format regions from TE annotation. Default: undef. (--anno 1 required)."
    force: "[0|1]   When no confident TE candidates are found: 0, interrupt and exit (default); 1, use rice TEs to continue."
    repeat_modeler: "[path]  The directory containing RepeatModeler (default: read from ENV)"
    repeatmasker: "[path]   The directory containing RepeatMasker (default: read from ENV)"
    blast: "[path]  The directory containing BLASTx and BLASTn (default: read from ENV)"
    check_dependencies: "if dependencies are fullfiled and quit"
    trf: "[path]    The directory containing TRF (default: read from ENV)"
    threads: "[int]   Number of theads to run this script (default: 4)"
  }
}