version 1.0

task Aquamis {
  input {
    String? sample_list
    Directory? working_directory
    File? snake_file
    Int? run_name
    File? docker
    File? qc_thresholds
    Int? json_schema
    File? json_filter
    File? mash_db
    Int? mash_km_er_size
    Int? mash_sketch_size
    Int? kraken_two_db
    Int? tax_level_qc
    Int? read_length
    File? tax_on_kit_db
    File? con_find_r_database
    Int? min_trimmed_length
    String? assembler
    String? shov_ill_output_options
    Int? shov_ill_depth
    Int? shov_ill_ram
    Directory? shov_ill_tmpdir
    String? shov_ill_extra_opts
    String? shov_ill_modules
    String? mlst_scheme
    Int? threads
    Int? threads_sample
    File? cond_a_prefix
    Boolean? dry_run
    Boolean? force_all
    File? force
    Boolean? fix_fails
    Boolean? unlock
    Boolean? use_cond_a
    Boolean? cond_a_front_end
    Boolean? remove_temp
    File? logdir
    String interrupted
  }
  command <<<
    aquamis \
      ~{interrupted} \
      ~{if defined(sample_list) then ("--sample_list " +  '"' + sample_list + '"') else ""} \
      ~{if defined(working_directory) then ("--working_directory " +  '"' + working_directory + '"') else ""} \
      ~{if defined(snake_file) then ("--snakefile " +  '"' + snake_file + '"') else ""} \
      ~{if defined(run_name) then ("--run_name " +  '"' + run_name + '"') else ""} \
      ~{if defined(docker) then ("--docker " +  '"' + docker + '"') else ""} \
      ~{if defined(qc_thresholds) then ("--qc_thresholds " +  '"' + qc_thresholds + '"') else ""} \
      ~{if defined(json_schema) then ("--json_schema " +  '"' + json_schema + '"') else ""} \
      ~{if defined(json_filter) then ("--json_filter " +  '"' + json_filter + '"') else ""} \
      ~{if defined(mash_db) then ("--mashdb " +  '"' + mash_db + '"') else ""} \
      ~{if defined(mash_km_er_size) then ("--mash_kmersize " +  '"' + mash_km_er_size + '"') else ""} \
      ~{if defined(mash_sketch_size) then ("--mash_sketchsize " +  '"' + mash_sketch_size + '"') else ""} \
      ~{if defined(kraken_two_db) then ("--kraken2db " +  '"' + kraken_two_db + '"') else ""} \
      ~{if defined(tax_level_qc) then ("--taxlevel_qc " +  '"' + tax_level_qc + '"') else ""} \
      ~{if defined(read_length) then ("--read_length " +  '"' + read_length + '"') else ""} \
      ~{if defined(tax_on_kit_db) then ("--taxonkit_db " +  '"' + tax_on_kit_db + '"') else ""} \
      ~{if defined(con_find_r_database) then ("--confindr_database " +  '"' + con_find_r_database + '"') else ""} \
      ~{if defined(min_trimmed_length) then ("--min_trimmed_length " +  '"' + min_trimmed_length + '"') else ""} \
      ~{if defined(assembler) then ("--assembler " +  '"' + assembler + '"') else ""} \
      ~{if defined(shov_ill_output_options) then ("--shovill_output_options " +  '"' + shov_ill_output_options + '"') else ""} \
      ~{if defined(shov_ill_depth) then ("--shovill_depth " +  '"' + shov_ill_depth + '"') else ""} \
      ~{if defined(shov_ill_ram) then ("--shovill_ram " +  '"' + shov_ill_ram + '"') else ""} \
      ~{if defined(shov_ill_tmpdir) then ("--shovill_tmpdir " +  '"' + shov_ill_tmpdir + '"') else ""} \
      ~{if defined(shov_ill_extra_opts) then ("--shovill_extraopts " +  '"' + shov_ill_extra_opts + '"') else ""} \
      ~{if defined(shov_ill_modules) then ("--shovill_modules " +  '"' + shov_ill_modules + '"') else ""} \
      ~{if defined(mlst_scheme) then ("--mlst_scheme " +  '"' + mlst_scheme + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(threads_sample) then ("--threads_sample " +  '"' + threads_sample + '"') else ""} \
      ~{if defined(cond_a_prefix) then ("--condaprefix " +  '"' + cond_a_prefix + '"') else ""} \
      ~{if (dry_run) then "--dryrun" else ""} \
      ~{if (force_all) then "--forceall" else ""} \
      ~{if defined(force) then ("--force " +  '"' + force + '"') else ""} \
      ~{if (fix_fails) then "--fix_fails" else ""} \
      ~{if (unlock) then "--unlock" else ""} \
      ~{if (use_cond_a) then "--use_conda" else ""} \
      ~{if (cond_a_front_end) then "--conda_frontend" else ""} \
      ~{if (remove_temp) then "--remove_temp" else ""} \
      ~{if defined(logdir) then ("--logdir " +  '"' + logdir + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/aquamis:1.3.5--0"
  }
  parameter_meta {
    sample_list: "List of samples to assemble, format as defined by ..."
    working_directory: "Working directory"
    snake_file: "Path to Snakefile of bakcharak pipeline; default: path\\nto Snakefile in same directory"
    run_name: "Name of the sequencing run for all samples in the\\nsample list, e.g.\\n\\\"210401_M02387_0709_000000000-HBXX6\\\", or a self-chosen\\nanalysis title"
    docker: "Mapped volume path of the host system"
    qc_thresholds: "Definition of thresholds in JSON file; default: /usr/l\\nocal/opt/aquamis/thresholds/AQUAMIS_thresholds.json"
    json_schema: "JSON schema used for validation; default: /usr/local/o\\npt/aquamis/resources/AQUAMIS_schema_v20210226.json"
    json_filter: "Definition of thresholds in JSON file; default: /usr/l\\nocal/opt/aquamis/thresholds/AQUAMIS_schema_filter_v202\\n10226.json"
    mash_db: "Path to reference mash database; default:/usr/local/op\\nt/aquamis/reference_db/mash/mashDB.msh"
    mash_km_er_size: "kmer size for mash, must match size of database;\\ndefault: 21"
    mash_sketch_size: "sketch size for mash, must match size of database;\\ndefault: 1000"
    kraken_two_db: "Path to kraken2 database; default:\\n/usr/local/opt/aquamis/reference_db/kraken2"
    tax_level_qc: "Taxonomic level for kraken2 classification quality\\ncontrol. Choose S for species or G for genus; default:\\n\\\"G\\\""
    read_length: "Read length to be used in bracken abundance\\nestimation; default: 150"
    tax_on_kit_db: "Path to taxonkit_db;\\ndefault:/usr/local/opt/aquamis/reference_db/taxonkit"
    con_find_r_database: "Path to confindr databases;\\ndefault:/usr/local/opt/aquamis/reference_db/confindr"
    min_trimmed_length: "Minimum length of a read to keep; default: 15"
    assembler: "Assembler to use in shovill, choose from megahit\\nvelvet skesa spades; default: \\\"spades\\\""
    shov_ill_output_options: "Extra output options for shovill; default: \\\"\\\""
    shov_ill_depth: "Sub-sample --R1/--R2 to this depth. Disable with\\n--depth 0; default: 100"
    shov_ill_ram: "Limit amount of RAM provided to shovill; default: 16"
    shov_ill_tmpdir: "Fast temporary directory; default: \\\"/tmp/shovill\\\""
    shov_ill_extra_opts: "Extra options for shovill; default: \\\"\\\""
    shov_ill_modules: "Module options for shovill; choose from --noreadcorr\\n--trim --nostitch --nocorr --noreadcorr; default: \\\"--\\nnoreadcorr\\\""
    mlst_scheme: "Extra options for MLST; default: \\\"\\\""
    threads: "Number of Threads to use. Ideally multiple of 10;\\ndefault: 10"
    threads_sample: "Number of Threads to use per sample; default: 1"
    cond_a_prefix: "Path of default conda environment, enables recycling\\nbuilt environments; default: \\\"<AQUAMIS>/conda_env\\\""
    dry_run: "Snakemake dryrun. Only calculate graph without\\nexecuting anything"
    force_all: "Snakemake force. Force recalculation of all steps"
    force: "Snakemake force. Force recalculation of output (rule\\nor file) speciefied here"
    fix_fails: "Re-run snakemake after failure removing failed samples"
    unlock: "Unlock a snakemake execution folder if it had been"
    use_cond_a: "Utilize the Snakemake \\\"--useconda\\\" option, i.e. Smk\\nrules require execution with a specific conda env"
    cond_a_front_end: "Do not use mamba but conda as frontend to create\\nindividual conda environments"
    remove_temp: "Remove large temporary files. May lead to slower re-\\nruns but saves disk space."
    logdir: "Path to directory where .snakemake output is to be\\nsaved\\n"
    interrupted: "--no_assembly         Only trimming and kraken analysis"
  }
  output {
    File out_stdout = stdout()
    File out_force = "${in_force}"
    File out_logdir = "${in_logdir}"
  }
}