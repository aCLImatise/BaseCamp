version 1.0

task RefgenieBuild {
  input {
    File? genome_config
    Boolean? skip_read_lock
    Boolean? new_start
    Float? tag_description
    Int? genome_description
    Boolean? docker
    Array[String] assets
    Array[String] files
    Array[String] params
    Array[String] volumes
    Directory? out_folder
    Boolean? requirements
    String? recipe
    Int? genome
    File? c
    Boolean? r
    String asset_registry_paths
    String reading
    String run
  }
  command <<<
    refgenie build \
      ~{asset_registry_paths} \
      ~{reading} \
      ~{run} \
      ~{if defined(genome_config) then ("--genome-config " +  '"' + genome_config + '"') else ""} \
      ~{if (skip_read_lock) then "--skip-read-lock" else ""} \
      ~{if (new_start) then "--new-start" else ""} \
      ~{if defined(tag_description) then ("--tag-description " +  '"' + tag_description + '"') else ""} \
      ~{if defined(genome_description) then ("--genome-description " +  '"' + genome_description + '"') else ""} \
      ~{if (docker) then "--docker" else ""} \
      ~{if defined(assets) then ("--assets " +  '"' + assets + '"') else ""} \
      ~{if defined(files) then ("--files " +  '"' + files + '"') else ""} \
      ~{if defined(params) then ("--params " +  '"' + params + '"') else ""} \
      ~{if defined(volumes) then ("--volumes " +  '"' + volumes + '"') else ""} \
      ~{if defined(out_folder) then ("--outfolder " +  '"' + out_folder + '"') else ""} \
      ~{if (requirements) then "--requirements" else ""} \
      ~{if defined(recipe) then ("--recipe " +  '"' + recipe + '"') else ""} \
      ~{if defined(genome) then ("--genome " +  '"' + genome + '"') else ""} \
      ~{if defined(c) then ("-C " +  '"' + c + '"') else ""} \
      ~{if (r) then "-R" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/refgenie:0.10.0--py_0"
  }
  parameter_meta {
    genome_config: "Path to local genome configuration file. Optional\\nif REFGENIE environment variable is set."
    skip_read_lock: "Whether the config file should not be locked for"
    new_start: "Overwrite all results to start a fresh run"
    tag_description: "Add tag level description (e.g. built with version\\n0.3.2)."
    genome_description: "Add genome level description (e.g. The mouse\\nmitochondrial genome, released in Dec 2013)."
    docker: "Run all commands in the refgenie docker container."
    assets: "Override the default genome, asset and tag of the\\nparents (e.g. fasta=hg38/fasta:default\\ngtf=mm10/gencode_gtf:default)."
    files: "Provide paths to the required files (e.g.\\nfasta=/path/to/file.fa.gz)."
    params: "Provide required parameter values (e.g.\\nparam1=value1)."
    volumes: "If using docker, also mount these folders as\\nvolumes."
    out_folder: "Override the default path to genomes folder, which\\nis the genome_folder attribute in the genome\\nconfiguration file."
    requirements: "Show the build requirements for the specified\\nasset and exit."
    recipe: "Provide a recipe to use."
    genome: "Reference assembly ID, e.g. mm10."
    c: ""
    r: ""
    asset_registry_paths: "One or more registry path strings that identify\\nassets (e.g. hg38/fasta or hg38/fasta:tag)."
    reading: "-R, --recover                         Overwrite locks to recover from previous failed"
    run: "-C CONFIG_FILE, --config CONFIG_FILE  Pipeline configuration file (YAML). Relative paths"
  }
  output {
    File out_stdout = stdout()
    Directory out_out_folder = "${in_out_folder}"
  }
}