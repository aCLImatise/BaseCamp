version 1.0

task DammitDatabases {
  input {
    Boolean? install
    Directory? database_dir
    Boolean? busco_group
    Int? n_threads
    File? config_file
    File? busco_config_file
    String? verbosity
    Boolean? profile
    Boolean? force
    Boolean? no_rename
    Boolean? full
    Boolean? nr
    Boolean? quick
  }
  command <<<
    dammit databases \
      ~{if (install) then "--install" else ""} \
      ~{if defined(database_dir) then ("--database-dir " +  '"' + database_dir + '"') else ""} \
      ~{if (busco_group) then "--busco-group" else ""} \
      ~{if defined(n_threads) then ("--n_threads " +  '"' + n_threads + '"') else ""} \
      ~{if defined(config_file) then ("--config-file " +  '"' + config_file + '"') else ""} \
      ~{if defined(busco_config_file) then ("--busco-config-file " +  '"' + busco_config_file + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if (profile) then "--profile" else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if (no_rename) then "--no-rename" else ""} \
      ~{if (full) then "--full" else ""} \
      ~{if (nr) then "--nr" else ""} \
      ~{if (quick) then "--quick" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    install: "Install missing databases. Downloads and preps where\\nnecessary (default: False)"
    database_dir: "Directory to store databases. Existing databases will\\nnot be overwritten. By default, the database directory\\nis $HOME/.dammit/databases. (default:\\n/root/.dammit/databases)"
    busco_group: "[metazoa, eukaryota, vertebrata, ...]\\nWhich BUSCO group to use. Should be chosen based on\\nthe organism being annotated. Full list of options is\\nbelow. (default: metazoa)"
    n_threads: "For annotate, number of threads to pass to programs\\nsupporting multithreading. For databases, number of\\nsimultaneous tasks to execute. (default: 1)"
    config_file: "A JSON file providing values to override built-in\\nconfig. Advanced use only! (default: None)"
    busco_config_file: "Path to an alternative BUSCO config file; otherwise,\\nBUSCO will attempt to use its default installation\\nwhich will likely only work on bioconda. Advanced use\\nonly! (default: None)"
    verbosity: "Verbosity level for doit tasks. (default: 0)"
    profile: "Profile task execution. (default: False)"
    force: "Ignore missing database tasks. (default: False)"
    no_rename: "Keep original transcript names. Note: make sure your\\ntranscript names do not contain unusual characters.\\n(default: False)"
    full: "Run a \\\"complete\\\" annotation; includes uniref90, which\\nis left out of the default pipeline because it is huge\\nand homology searches take a long time. (default:\\nFalse)"
    nr: "Also include annotation to NR database, which is left\\nout of the default and \\\"full\\\" pipelines because it is\\nhuge and homology searches take a long time. (default:\\nFalse)"
    quick: "Run a \\\"quick\\\" annotation; excludes the Infernal Rfam\\ntasks, the HMMER Pfam tasks, and the LAST OrthoDB and\\nuniref90 tasks. Best for users just looking to get\\nbasic stats and conditional reciprocal best LAST from\\na protein database. (default: False)"
  }
  output {
    File out_stdout = stdout()
  }
}