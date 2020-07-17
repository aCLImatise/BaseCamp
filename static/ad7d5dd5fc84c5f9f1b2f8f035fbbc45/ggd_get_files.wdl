version 1.0

task GgdGetFiles {
  input {
    String? channel
    String? species
    String? genome_build
    String? pattern
    String? prefix
    String name
  }
  command <<<
    ggd get-files \
      ~{name} \
      ~{if defined(channel) then ("--channel " +  '"' + channel + '"') else ""} \
      ~{if defined(species) then ("--species " +  '"' + species + '"') else ""} \
      ~{if defined(genome_build) then ("--genome-build " +  '"' + genome_build + '"') else ""} \
      ~{if defined(pattern) then ("--pattern " +  '"' + pattern + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""}
  >>>
  parameter_meta {
    channel: "The ggd channel of the recipe to find. (Default = genomics)"
    species: "(Optional) species recipe is for. Use '*' for any species"
    genome_build: "(Optional) genome build the recipe is for. Use '*' for any genome build."
    pattern: "(Optional) pattern to match the name of the file desired. To list all files for a ggd package, do not use the -p option"
    prefix: "(Optional) The name or the full directory path to an conda environment where a ggd recipe is stored. (Only needed if not getting file paths for files in the current conda enviroment)"
    name: "pattern to match recipe name(s)."
  }
}