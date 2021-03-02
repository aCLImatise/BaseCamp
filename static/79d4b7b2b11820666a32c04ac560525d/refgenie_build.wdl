version 1.0

task RefgenieBuild {
  input {
    File? genome_config
    Boolean? recover
    File? config
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
    String asset_registry_paths
  }
  command <<<
    refgenie build \
      ~{asset_registry_paths} \
      ~{if defined(genome_config) then ("--genome-config " +  '"' + genome_config + '"') else ""} \
      ~{if (recover) then "--recover" else ""} \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
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
      ~{if defined(genome) then ("--genome " +  '"' + genome + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/refgenie:0.9.3--py_0"
  }
  parameter_meta {
    genome_config: "Path to local genome configuration file. Optional if\\nREFGENIE environment variable is set."
    recover: "Overwrite locks to recover from previous failed run"
    config: "Pipeline configuration file (YAML). Relative paths are\\nwith respect to the pipeline script."
    new_start: "Overwrite all results to start a fresh run"
    tag_description: "Add tag level description (e.g. built with version\\n0.3.2)."
    genome_description: "Add genome level description (e.g. The mouse\\nmitochondrial genome, released in Dec 2013)."
    docker: "Run all commands in the refgenie docker container."
    assets: "Override the default genome, asset and tag of the\\nparents (e.g. fasta=hg38/fasta:default\\ngtf=mm10/gencode_gtf:default)."
    files: "Provide paths to the required files (e.g.\\nfasta=/path/to/file.fa.gz)."
    params: "Provide required parameter values (e.g.\\nparam1=value1)."
    volumes: "If using docker, also mount these folders as volumes."
    out_folder: "Override the default path to genomes folder, which is\\nthe genome_folder attribute in the genome\\nconfiguration file."
    requirements: "Show the build requirements for the specified asset\\nand exit."
    recipe: "Provide a recipe to use."
    genome: "Reference assembly ID, e.g. mm10."
    asset_registry_paths: "One or more registry path strings that identify assets\\n(e.g. hg38/fasta or hg38/fasta:tag)."
  }
  output {
    File out_stdout = stdout()
    Directory out_out_folder = "${in_out_folder}"
  }
}