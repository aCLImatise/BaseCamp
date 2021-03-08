version 1.0

task GetOrganelleConfigpy {
  input {
    String? add
    String? use_version
    String? rm
    Boolean? update
    File? config_dir
    File? use_local
    Boolean? clean
    Boolean? list
    Boolean? check
    String? db_type
    File? which_blast
    Int? which_bowtie_two
    Boolean? verbose
  }
  command <<<
    get_organelle_config_py \
      ~{if defined(add) then ("--add " +  '"' + add + '"') else ""} \
      ~{if defined(use_version) then ("--use-version " +  '"' + use_version + '"') else ""} \
      ~{if defined(rm) then ("--rm " +  '"' + rm + '"') else ""} \
      ~{if (update) then "--update" else ""} \
      ~{if defined(config_dir) then ("--config-dir " +  '"' + config_dir + '"') else ""} \
      ~{if defined(use_local) then ("--use-local " +  '"' + use_local + '"') else ""} \
      ~{if (clean) then "--clean" else ""} \
      ~{if (list) then "--list" else ""} \
      ~{if (check) then "--check" else ""} \
      ~{if defined(db_type) then ("--db-type " +  '"' + db_type + '"') else ""} \
      ~{if defined(which_blast) then ("--which-blast " +  '"' + which_blast + '"') else ""} \
      ~{if defined(which_bowtie_two) then ("--which-bowtie2 " +  '"' + which_bowtie_two + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/getorganelle:1.7.3.5--pyh3252c3a_0"
  }
  parameter_meta {
    add: "Add database for organelle type(s). Followed by any of\\nall/embplant_pt/embplant_mt/embplant_nr/fungus_mt/fung\\nus_nr/animal_mt/other_pt or multiple types joined by\\ncomma such as embplant_pt,embplant_mt,fungus_mt."
    use_version: "The version of database to add. Find more versions at\\ngithub.com/Kinggerm/GetOrganelleDB. Default: latest"
    rm: "Remove local database(s) for organelle type(s).\\nFollowed by any of all/embplant_pt/embplant_mt/embplan\\nt_nr/fungus_mt/fungus_nr/animal_mt/other_pt or\\nmultiple types joined by comma such as\\nembplant_pt,embplant_mt."
    update: "Update local databases to the latest online version,\\nor the local version if \\\"--use-local LOCAL_DB_PATH\\\"\\nprovided."
    config_dir: "The directory where the default databases were placed.\\nThe default value also can be changed by adding\\n'export GETORG_PATH=your_favor' to the shell script\\n(e.g. ~/.bash_profile or ~/.bashrc) Default:\\n/root/.GetOrganelle"
    use_local: "Input a path. This local database path must include\\nsubdirectories LabelDatabase and SeedDatabase, under\\nwhich there is the fasta file(s) named by the\\norganelle type you want add, such as fungus_mt.fasta."
    clean: "Remove all configured database files (==\\\"--rm all\\\")."
    list: "List configured databases checking and exit."
    check: "Check configured database files and exit."
    db_type: "The database type (seed/label/both). Default: both"
    which_blast: "Assign the path to BLAST binary files if not added to\\nthe path. Default: try \\\"/GetOrganelleDep/linux/ncbi-\\nblast\\\" first, then $PATH"
    which_bowtie_two: "Assign the path to Bowtie2 binary files if not added\\nto the path. Default: try\\n\\\"/GetOrganelleDep/linux/bowtie2\\\" first, then $PATH"
    verbose: "verbose output to the screen. Default: False"
  }
  output {
    File out_stdout = stdout()
  }
}