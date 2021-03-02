version 1.0

task Hlama {
  input {
    File? tumor_normal
    File? pedigree
    File? config
    Directory? work_dir
    Directory? reads_base_dir
    Boolean? dont_run_snake_make
    Boolean? disable_checks
    Int? num_threads
  }
  command <<<
    hlama \
      ~{if defined(tumor_normal) then ("--tumor-normal " +  '"' + tumor_normal + '"') else ""} \
      ~{if defined(pedigree) then ("--pedigree " +  '"' + pedigree + '"') else ""} \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(work_dir) then ("--work-dir " +  '"' + work_dir + '"') else ""} \
      ~{if defined(reads_base_dir) then ("--reads-base-dir " +  '"' + reads_base_dir + '"') else ""} \
      ~{if (dont_run_snake_make) then "--dont-run-snakemake" else ""} \
      ~{if (disable_checks) then "--disable-checks" else ""} \
      ~{if defined(num_threads) then ("--num-threads " +  '"' + num_threads + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    tumor_normal: "Path to tumor/normal TSV file, starts tumor/normal\\nmode"
    pedigree: "Path to pedigree file, starts pedigree mode"
    config: "Optional explicit path to configuration file, by\\ndefault ~/.hlama.cfg is searched for"
    work_dir: "Directory to create the Snakefile in"
    reads_base_dir: "Base directory for reads, give multiple times for\\nmultiple places to search"
    dont_run_snake_make: "Only create Snakefile but do not run Snakemake yet"
    disable_checks: "Disable input checks"
    num_threads: "Number of threads to use for read mapping, defaults to\\n1\\n"
  }
  output {
    File out_stdout = stdout()
  }
}