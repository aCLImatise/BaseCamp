version 1.0

task Hlama {
  input {
    String? tumor_normal
    String? pedigree
    String? config
    String? work_dir
    String? reads_base_dir
    Boolean? dont_run_snake_make
    Boolean? disable_checks
    String? num_threads
  }
  command <<<
    hlama \
      ~{if defined(tumor_normal) then ("--tumor-normal " +  '"' + tumor_normal + '"') else ""} \
      ~{if defined(pedigree) then ("--pedigree " +  '"' + pedigree + '"') else ""} \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(work_dir) then ("--work-dir " +  '"' + work_dir + '"') else ""} \
      ~{if defined(reads_base_dir) then ("--reads-base-dir " +  '"' + reads_base_dir + '"') else ""} \
      ~{true="--dont-run-snakemake" false="" dont_run_snake_make} \
      ~{true="--disable-checks" false="" disable_checks} \
      ~{if defined(num_threads) then ("--num-threads " +  '"' + num_threads + '"') else ""}
  >>>
  parameter_meta {
    tumor_normal: "Path to tumor/normal TSV file, starts tumor/normal mode"
    pedigree: "Path to pedigree file, starts pedigree mode"
    config: "Optional explicit path to configuration file, by default ~/.hlama.cfg is searched for"
    work_dir: "Directory to create the Snakefile in"
    reads_base_dir: "Base directory for reads, give multiple times for multiple places to search"
    dont_run_snake_make: "Only create Snakefile but do not run Snakemake yet"
    disable_checks: "Disable input checks"
    num_threads: "Number of threads to use for read mapping, defaults to 1"
  }
}