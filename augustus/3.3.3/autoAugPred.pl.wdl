version 1.0

task AutoAugPredpl {
  input {
    File? genome
    String? species
    Boolean? continue
    Boolean? use_existing
    Boolean? single_cpu
    Boolean? noninteractive
    Boolean? working_dir
    Boolean? utr
    File? hints
    File? extrinsic_cfg
    Boolean? verbose
    String? remote
    File? augustus_config_path
  }
  command <<<
    autoAugPred_pl \
      ~{if defined(genome) then ("--genome " +  '"' + genome + '"') else ""} \
      ~{if defined(species) then ("--species " +  '"' + species + '"') else ""} \
      ~{if (continue) then "--continue" else ""} \
      ~{if (use_existing) then "--useexisting" else ""} \
      ~{if (single_cpu) then "--singleCPU" else ""} \
      ~{if (noninteractive) then "--noninteractive" else ""} \
      ~{if (working_dir) then "--workingdir" else ""} \
      ~{if (utr) then "--utr" else ""} \
      ~{if defined(hints) then ("--hints " +  '"' + hints + '"') else ""} \
      ~{if defined(extrinsic_cfg) then ("--extrinsiccfg " +  '"' + extrinsic_cfg + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(remote) then ("--remote " +  '"' + remote + '"') else ""} \
      ~{if defined(augustus_config_path) then ("--AUGUSTUS_CONFIG_PATH " +  '"' + augustus_config_path + '"') else ""}
  >>>
  parameter_meta {
    genome: "fasta file with DNA sequences for training"
    species: "species name as used by AUGUSTUS"
    continue: "after cluster jobs are finished, continue to compile prediction sets"
    use_existing: "use and change the present config and parameter files if they exist for 'species'"
    single_cpu: "run sequentially on a single CPU instead of parallel jobs on a cluster"
    noninteractive: "for Sun Grid Engine users, who have configurated an openssh key\\nwith this option AUGUSTUS is executed automatically on the SGE cluster"
    working_dir: "=/path/to/wd/      in the working directory results and temporary files are stored."
    utr: "switch it on to run AUGUSTUS with untranslated regions. Off by default"
    hints: "run AUGUSTUS using extrinsic information from hintsfile"
    extrinsic_cfg: "configuration file with parameters (boni/mali) for hints.\\ndefault $AUGUSTUS_CONFIG_PATH/config/extrinsic/extrinsic.cfg"
    verbose: "the verbosity level"
    remote: "specify the SGE cluster name for noninteractive, default \\\"fe\\\""
    augustus_config_path: "path to augustus/config directory. default: use environment variable"
  }
  output {
    File out_stdout = stdout()
  }
}