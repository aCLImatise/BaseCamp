version 1.0

task Seq2scienceRun {
  input {
    File? config_file
    Int? cores
    Boolean? dry_run
    Int? snake_make_options
    Int? profile
    Boolean? keep_going
    Boolean? rerun_incomplete
    Boolean? unlock
  }
  command <<<
    seq2science run \
      ~{if defined(config_file) then ("--configfile " +  '"' + config_file + '"') else ""} \
      ~{if defined(cores) then ("--cores " +  '"' + cores + '"') else ""} \
      ~{if (dry_run) then "--dryrun" else ""} \
      ~{if defined(snake_make_options) then ("--snakemakeOptions " +  '"' + snake_make_options + '"') else ""} \
      ~{if defined(profile) then ("--profile " +  '"' + profile + '"') else ""} \
      ~{if (keep_going) then "--keep-going" else ""} \
      ~{if (rerun_incomplete) then "--rerun-incomplete" else ""} \
      ~{if (unlock) then "--unlock" else ""}
  >>>
  parameter_meta {
    config_file: "The path to the config file."
    cores: "Use at most N cores in parallel. Must be at least 2."
    dry_run: "Do not execute anything, and display what would be"
    snake_make_options: "=VAL [KEY=VAL ...]\\nExtra arguments to pass along to snakemake. An example\\ncould be seq2science run alignment --cores 12\\n--snakemakeOptions resources={mem_gb:100}\\nlocal_cores=3. Here we pass local_cores as KEY=VALUE\\nand additional resources can even be passed along in a\\ndictionary. Take a look at the snakemake API for a\\ncomplete list of all possible options: https://snakema\\nke.readthedocs.io/en/latest/api_reference/snakemake.ht\\nml"
    profile: "NAME\\nUse a snakemake/seq2science profile. Profiles can be\\ntaken from: https://github.com/snakemake-profiles"
    keep_going: "Go on with independent jobs if a job fails."
    rerun_incomplete: "Re-run all jobs the output of which is recognized as\\nincomplete.\\n"
    unlock: ""
  }
  output {
    File out_stdout = stdout()
  }
}